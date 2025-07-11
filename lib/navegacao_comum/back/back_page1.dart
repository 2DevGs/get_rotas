import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackPage1 extends StatelessWidget {

  const BackPage1({ super.key });

   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Back Page 1'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              }, 
              child: const Text('Back to page with Flutter Native'),
            ),
            TextButton(
              onPressed: (){
                Get.back();
              }, 
              child: const Text('Back to Page with GetX'),
            ),
          ],
        ),
      ),
    );
  }
}