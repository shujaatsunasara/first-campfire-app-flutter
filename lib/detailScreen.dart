import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detailpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('detail')),
      body: Container(
        width: double.infinity,
        height: 200,
        child: Hero(
          tag: 'logo',
          child: Image.asset(
            'assets/images/Windows.png',
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
