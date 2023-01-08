import 'dart:developer';
import 'dart:ffi';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:secound_project/detailScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firstapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: SecoundClass(),
    );
  }
}

class SecoundClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SecoundClassState();
  }
}

class SecoundClassState extends State<SecoundClass> {
  bool frst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
        ),
        body: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => detailpage()));
          },
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    child: Hero(
                      tag: 'windows',
                      child: Image.asset('assets/images/Windows.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
