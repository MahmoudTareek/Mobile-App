import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  //setting the expansion function for the navigation rail
  

  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // el navigation el 3l shemal
          //Let's start by adding the Navigation Rail
          NavigationRail(

              extended: isExpanded,
              backgroundColor: Color.fromARGB(255, 167, 121, 136),
              unselectedIconTheme:
                  IconThemeData(color: Color.fromARGB(255, 98, 98, 100)),
              unselectedLabelTextStyle: TextStyle(
                color: Colors.white,
              ),
        
              selectedIconTheme:
                  IconThemeData(color: Color.fromARGB(255, 98, 98, 100)),
                  
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text("Home"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.rate_review_rounded),
                  label: Text("Reviews"),
                ),
                // NavigationRailDestination(
                //   icon: Icon(Icons.person),
                //   label: Text("Users"),
                // ),
               
                 NavigationRailDestination(
                  icon: Icon(Icons.logout),
                  label: Text("Logout"),
              


                ),
              ],
              selectedIndex: 0),



          Expanded(
            child: Padding(
              padding: EdgeInsets.all(60.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //let's add the navigation menu for this project
                    Row(
                      //zorar el 3 shorat el lma bendos 3leh byefta7 el menu
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            //let's trigger the navigation expansion
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                          icon: Icon(Icons.menu),
                        ),
                        //b msh 3aref a7ot el sora lesa
                        // CircleAvatar(
                        //   backgroundImage: Image.asset(
                        //     "assets/images/admin.png",
                        //   ).image,
                        //   radius: 26.0,
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    //Now let's start with the dashboard main rapports
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                   
                        Flexible(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.people,
                                        size: 26.0,
                                        color: Color.fromARGB(243, 201, 171, 186),
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Users",
                                        style: TextStyle(
                                          fontSize: 26.0,
                                          color: Color.fromARGB(243, 201, 171, 186),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text(
                                    "3.2M Users",
                                    style: TextStyle(
                                      fontSize: 36,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.rate_review_rounded,
                                        size: 26.0,
                                        color: Color.fromARGB(243, 201, 171, 186),
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Reviews",
                                        style: TextStyle(
                                          fontSize: 26.0,
                                          color: Color.fromARGB(243, 201, 171, 186),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text(
                                    "23",
                                    style: TextStyle(
                                      fontSize: 36,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    
    );
  }
}