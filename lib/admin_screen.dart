import 'package:flutter/material.dart';
import 'package:project/components.dart';
import 'package:project/admin_model.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';

class AdminScreen extends StatefulWidget
  
{
  @override
  _AdminScreenState createState() => _AdminScreenState();

}
  
class _AdminScreenState extends State<AdminScreen> 
{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
      ),
      body: ConditionalBuilder(
          condition: users.isNotEmpty,
          builder: (context) => ListView.separated(
          itemBuilder: (context, index) => buildFavoriteItem(users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
              end: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,
      ),
        fallback: (context) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.not_interested,
                color: Colors.red,
                size: 120.0,
                ),
              Text(
                'No Favorites',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          ),
      ),
  );
  }

Widget buildFavoriteItem(UsersModel model) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:
    [
      SizedBox(
                height: 20.0,
              ),
      Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            height: 100.0,
            width: 120.0,
            child: Stack(
            alignment: AlignmentDirectional.topStart,
            children: 
            [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  '${model.image}',
                  ),
              ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${model.name}',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                    children: [
                      Text(
                        '${model.email}',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 30.0,
                      bottom: 20.0,
                    ),
                    child: IconButton(
                    onPressed: (){
                      setState(() {
                        model.isdeleted = !model.isdeleted;
                        users.removeWhere((model) => model.isdeleted == false);
                        final snackBar = SnackBar(
                        content: Text(
                          '${model.name} is deleted successfully',
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      );
                    },
                     icon: CircleAvatar(
                      radius: 15.0,
                      child: Icon(
                        Icons.delete,
                        size: 35.0,
                        color: Colors.red,
                      ),
                      backgroundColor: Colors.white,
                     ),
                     ),
                  ),
                  ],
                ),
                ],
              ),
            ),
          ),
        ],
    ),
    ],
  );
}
