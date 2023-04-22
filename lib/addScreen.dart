import 'package:assignment/customObject.dart';
import 'package:assignment/firstScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddScreen extends StatelessWidget {
  AddScreen({super.key, required this.myList});
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  firstScreen frobj= new firstScreen();
  List<myObj> myList;
  
  @override
  
  Widget build(BuildContext context) {
    myObj obj= new myObj();
    return Scaffold(
        appBar: AppBar(title: Text('add item screen')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            obj.email=emailcontroller.text.toString();
            obj.name = namecontroller.text.toString();
            myList.add(obj);
            listSize.value= myList.length;
            Get.back();
          },
          child: Icon(Icons.add),
        ),
        body: Column(
          children: [
            TextFormField(
              controller: namecontroller,
            ),
            SizedBox(
              height: Get.height * 0.04,
            ),
            TextFormField(
              controller: emailcontroller,
            ),
          ],
        ));
  }
}
