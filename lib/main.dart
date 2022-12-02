import 'package:flutter/material.dart';
import 'package:fruteapp/card.dart';
import 'package:fruteapp/home.dart';
import 'package:fruteapp/second.dart';

List photos = ["asset/image/apple.png"];
List name = ["Apple"];
List<int> price = [];

void main()
{
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => home(),
          '/details':(context) => details(),
          '/cart':(context) => cart(),
        },
      )
  );
}