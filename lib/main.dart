import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "Shadow Button",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              // fontStyle:FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xffF55252),
        ),
        body: Center(
            child: GestureDetector(
          onTap: () {
            print("Button Tap");
          },
          child: Container(
            height: 70,
            alignment: Alignment.center,
            width: 230,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.black,
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20), bottom: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(3, 3),
                  color: Colors.red,
                  spreadRadius: 9,
                  blurRadius: 20,
                ),
              ],
            ),
            child: Text(
              "TAP",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        )),
      ),
    ),
  );
}
