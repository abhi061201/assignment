import 'package:assignment/addScreen.dart';
import 'package:assignment/customObject.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

RxInt listSize = 0.obs;
List<myObj> myList = [];

class firstScreen extends StatelessWidget {
  firstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('firstScreen')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(myList.length);
            Get.to(AddScreen(
              myList: myList,
            ));
          },
          child: Icon(Icons.add),
        ),
        body: Obx(() {
          listSize.value = myList.length;
          return listSize.value == 0
              ? Center(
                  child: Text('Add some element'),
                )
              : ListView.builder(
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      height: Get.height*0.1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(myList[index].email.toString()),
                        Text(myList[index].name.toString()),
                      ],
                    )).paddingAll(10),
                  );
                });
        }));
  }
}
