import 'package:flutter/material.dart';
import 'package:project/views/components.dart';
import 'package:project/views/navbar.dart';
import '../services/user_service.dart';

class AdminScreen extends StatefulWidget {
  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
        backgroundColor: maincolor,
      ),
      body: StreamBuilder(
        stream: readAllUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final allUsers = snapshot.data!;
            return ListView.builder(
              itemCount: allUsers.length,
              itemBuilder: (context, index) {
                final user = allUsers[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        onPressed: () async {
                          await deleteUser(user.uId);
                          final snackBar = SnackBar(
                            content: Text(
                              '${user.name} is deleted successfully',
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.add_moderator,
                          color: Colors.blue,
                        ),
                        onPressed: () async {
                          await changeRole(user.uId);
                          if (user.role == 'user') {
                            final snackBar = SnackBar(
                              content: Text(
                                '${user.name} is admin now',
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } else {
                            final snackBar = SnackBar(
                              content: Text(
                                '${user.name} is user now',
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
