import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/secondescreen.dart';
import 'package:flutter/services.dart';
import 'Tervices.dart';
import 'package:flutter/services.dart';
class firstscreen extends StatefulWidget {
  const firstscreen({Key? key}) : super(key: key);
  @override
  State<firstscreen> createState() => _firstscreenState();
}
class _firstscreenState extends State<firstscreen> {
  Tervices service=Get.find<Tervices>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
           // crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children:[
          GestureDetector(
            onTap: () {
              Get.to(secondescreen());
              },
              child: Center(child: Text(
                "First Screen",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20),))
    ),
        SizedBox(height: 20,),
      Obx(
    (){

    return Center(child: Text('${service.number.toString()}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),));
    },
    ),
    ]
      ),
      floatingActionButton: FloatingActionButton(
       onPressed: (){
         service.fun();
         },
    child: Icon(Icons.add,),
    ),
    );
  }
}
