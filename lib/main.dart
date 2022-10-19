// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foo_animation_container/screen/Foo_Animated_Container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Foo Animation',
      home: Foo_Animated_Container(),
    );
  }
}

