import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/off/off_page1.dart';

class OffHomePage extends StatelessWidget {

  const OffHomePage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OFF Home'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context){
                      return const OffPage1();
                    }
                  )
                );
              }, 
              child: const Text('Go to Page 1 with Flutter Native'),
            ),
            TextButton(
              onPressed: (){
                Get.to(() => const OffPage1());
              }, 
              child: const Text('Go to Page 1 with GetX'),
            ),
          ],
        ),
      ),
    );
  }
}