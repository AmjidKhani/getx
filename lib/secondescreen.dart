import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/firsscreen.dart';

class secondescreen extends StatefulWidget {
  const secondescreen({Key? key}) : super(key: key);

  @override
  State<secondescreen> createState() => _secondescreenState();
}

class _secondescreenState extends State<secondescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            GestureDetector(
                onTap: () {
                  Get.to(firstscreen());
                  /*  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondescreen()),
              );*/
                },
                child: Center(child: Text(
                  "Seconde Screen",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20),))
            ),
            SizedBox(height: 20,),


          ]  ),



      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add,),
      ),

    );
  }
}
