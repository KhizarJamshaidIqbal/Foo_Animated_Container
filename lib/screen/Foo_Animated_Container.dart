// ignore_for_file: implementation_imports, camel_case_types, file_names, prefer_final_fields

import 'package:flutter/material.dart';

class Foo_Animated_Container extends StatefulWidget {
  const Foo_Animated_Container({super.key});

  @override
  State<Foo_Animated_Container> createState() => _Foo_Animated_ContainerState();
}

class _Foo_Animated_ContainerState extends State<Foo_Animated_Container> {
  var _height = 150.0;
  var _width = 300.0;
  bool flag = true;
  // Color bgColor = Colors.blueGrey;
  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.blueGrey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 2),
              height: _height,
              width: _width,
              // color: bgColor,
              decoration: myDecor,
              // curve: Curves.bounceInOut,
              curve: Curves.fastOutSlowIn,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (flag) {
                      _height = 300.0;
                      _width = 150.0;
                      // bgColor = Colors.orange;
                      myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.orange,
                      );
                      flag = false;
                    } else {
                      _height = 150.0;
                      _width = 300.0;
                      // bgColor = Colors.blueGrey;
                      myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.redAccent,
                      );
                      flag = true;
                    }
                  });
                },
                child: const Text('Click here...'))
          ],
        ),
      ),
    );
  }
}
