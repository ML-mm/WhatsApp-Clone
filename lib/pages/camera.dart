// import 'package:camera_camera/camera_camera.dart';
import 'package:flutter/material.dart';

class camera extends StatefulWidget {
  const camera({Key? key}) : super(key: key);

  @override
  State<camera> createState() => _cameraState();
}

class _cameraState extends State<camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  body: CameraCamera(
        //     onFile: (file) => print(file),
        // )
    );
  }
}
