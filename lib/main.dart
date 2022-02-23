// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       const DrawerHeader(
      //         margin: EdgeInsets.all(10),
      //         decoration: BoxDecoration(
      //           color: Colors.white54,
      //         ),
      //         child: Text(
      //           'Drawer Header',
      //         ),
      //       ),
      //       ListTile(
      //         title: const Text('Item1'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       )
      //     ],
      //   ),
      // ),
      body: Stack(
        children: <Widget>[
          // ignore: unnecessary_new
          new Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: 812,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text(
                      "Заяа зарна",
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Color(0xffffffff),
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                  ],
                ),
              ),
            ),
            // ignore: unnecessary_new
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(31),
                gradient: LinearGradient(
                    colors: [Color(0xff3c80f7), Color(0xff1058d1)],
                    stops: [0, 1])),
          ),
          Positioned(
            top: 100,
            // ignore: unnecessary_new
            child: new Container(
              margin: EdgeInsets.all(10),
              width: 400,
              height: 729,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: new Container(
                      width: 343,
                      height: 44,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              enabledBorder: InputBorder.none,
                              labelText: 'Таны хүлэг',
                              labelStyle: TextStyle(
                                  fontFamily: 'AlegreyaSansSC',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0),
                              suffix: FlatButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.search,
                                ),
                              )),
                        ),
                      ),
                      decoration: new BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(15),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            BoxShadow(
                              // color: Color(0x16000000),
                              color: Colors.indigo.shade100,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                            )
                          ]),
                    ),
                  )
                ],
              ),
              decoration: new BoxDecoration(
                  color: Color(0xffeff5ff),
                  borderRadius: BorderRadius.circular(32)),
            ),
          ),
        ],
      ),
    );
  }
}
