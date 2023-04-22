import 'package:assignment/addScreen.dart';
import 'package:assignment/dialog.dart';
import 'package:assignment/firstScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main(){
  runApp( MYapp());
}

class MYapp extends StatelessWidget {
  const MYapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home :Dialogmy(),
    );
  }
}