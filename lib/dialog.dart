import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Dialogmy extends StatelessWidget {
  const Dialogmy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('dialogue box')),
      body: Column(
        children: [
          // Card(
          //   child: ListTile(
          //     title: Text('Hii my name is abhishek'),
          //     onTap: (){
          //       Get.defaultDialog(
          //         title: 'This is dialogue box',
          //         // confirm: TextButton(onPressed: (){}, child: Text('hii')),
          //         // textCancel: 'NO',
          //         // textConfirm: 'Yes',
          //         cancel: TextButton(onPressed: (){
          //           Get.back();
          //         }, child: Text('ok')),

          //        confirm: TextButton(onPressed: (){
          //           Get.back();
          //         }, child: Text('no')),
          //       );
          //     },
          //   ),
          // ),

          Card(
            child: ListTile(
              title: Text('Getxbottom sheet'),
              autofocus: true,
              onTap: (){
                Get.bottomSheet(
                  backgroundColor: Colors.amber,
                  Container(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode_outlined),
                          title: Text('Light theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode_outlined),
                          title: Text('DArk theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },

                        ),
                      ],
                    ),
                  )
                );
              },
            ),
          )
        ],
      ),
    );
  }
}