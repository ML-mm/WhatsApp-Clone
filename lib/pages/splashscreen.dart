import 'dart:async';

import 'package:flutter/material.dart';

import 'homepage.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pop();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => homepage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 39, 43, 1),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(),
            Image.asset(
              "asset/wapplogo.png",
              width: MediaQuery.of(context).size.width / 3,
            ),
            Column(
              children: const [
                Text(
                  "from",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  "FACEBOOK",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
