import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitParamsPage1 extends StatelessWidget {

  const AwaitParamsPage1({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AWAIT Params Page1'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop('Retorned Param with Flutter Native');
              }, 
              child: const Text('Returning Param with Flutter Native'),
            ),
            TextButton(
              onPressed: () async {
                Get.back(result: 'Retorned Param with GetX');
              }, 
              child: const Text('Returning Param with GetX'),
            ),
          ],
        ),
      ),
    );
  }
}