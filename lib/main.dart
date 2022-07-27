import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Tervices.dart';
import 'package:getx/firsscreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
   //using GetX
  //final Service abc=Get.put(Service());
   final Tervices service=Get.put(Tervices());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: const firstscreen()
    );
  }
}


