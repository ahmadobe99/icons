import 'package:flutter/material.dart';
import 'dart:developer';

void main() {
  runApp(Home_Page());
}

//class MyApp extends StatelessWidget {
//const MyApp({super.key});

//@override
//Widget build(BuildContext context) {
//return Home_Page();
//}
//}

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  String MyText = "hello flutter team";
  Color MyColor = Colors.amber;
  Icon myIcon = Icon(Icons.home);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: Container(
        color: MyColor,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (() {
                  setState(() {
                    MyText = "this is bottun #1";
                    MyColor = Colors.grey;
                  });
                  log("hello 1 bottun");
                }),
                child: Text("bottun #1")),
            ElevatedButton.icon(
                onPressed: (() {
                  setState(() {
                    MyColor = Colors.amber;
                    MyText = "this is bottun #2";
                  });
                  log("hello 2 bottun");
                }),
                icon: Icon(Icons.laptop),
                label: Text("bottun #2")),
            MaterialButton(
              textColor: Colors.black,
              splashColor: Colors.purple,
              onPressed: (() {
                setState(() {
                  MyText = "this is bottun #3";
                  myIcon = Icon(Icons.person);
                  MyColor=Colors.red;
                });
                log("hello 3 bottun");
              }),
              color: Colors.blue,
              child: Text("bottun #3"),
            ),
            Text(
              MyText,
              style: TextStyle(fontSize: 25),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  MyColor = Colors.purple;
                  myIcon = Icon(Icons.home);
                });
              },
              icon: myIcon,
              iconSize: 40,
            )
          ],
        )),
      ),
    ));
  }
}
