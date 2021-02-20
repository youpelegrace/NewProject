import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),

      // Navigation(),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
         child: Icon( Icons.add,
         color: Colors.white ),
         backgroundColor: Color(0xffE53E3E)
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(

                  children: [
                    CircleAvatar(
                      radius:18
                      // image
                      ),
                      SizedBox(width: 20,),
                      Text("Tasks", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      Spacer(),
                      Icon(Icons.search
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.more_vert)
                  ],),
                     Divider(height:40),
                  Row(
                    children: [
                      Icon(Icons.star,
                      color: Colors.yellow,
                      ),
                      SizedBox(width: 10,),
                      Text("Starred", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                    ],
                  ),
                    Divider(height: 40.0),

                  Text("Tasks"),
                  SizedBox(height: 30),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 18),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                        Text("Create a beautiful physical christmas \ncard for upcoming  christmas", style: TextStyle(fontSize: 20),),

                          SizedBox(height:5),
                        Container(
                          width: 330,
                          child: Row(
                            children:[
                          CircleAvatar(radius:10),
                          CircleAvatar(radius:10),
                          CircleAvatar(radius:10),
                      
                          Spacer(),
                          Text("due Next Week", style: TextStyle(color: Colors.red),),
                          Icon(Icons.more_vert)
                          ]),
                        )
                        ])
                    ],),
                    Divider(height:50),

                    Row(
                      children: [
                        CircleAvatar(radius: 18),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text("Provide design team content for next \ndesign seminar",
                             style: TextStyle(fontSize: 20, decoration: TextDecoration.lineThrough)),
                            SizedBox(height: 5),
                            Container(
                              width: 330,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(radius:10),
                                  CircleAvatar(radius:10),
                                  
                                  Spacer(),
                                  Text("Due Yesterday", style: TextStyle(color: Colors.red),),
                                  Icon(Icons.more_vert)
                              ],),
                            )
                          ]
                        )
                    ],)
              ],
            ),
          ),),
    );
  }
}