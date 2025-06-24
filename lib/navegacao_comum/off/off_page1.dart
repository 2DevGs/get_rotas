import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/off/off_page2.dart';

class OffPage1 extends StatelessWidget {

  const OffPage1({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OFF Page1'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context){
                      return const OffPage2();
                    }
                  )
                );
              }, 
              child: const Text('Go to Page2 with Flutter Native'),
            ),
            TextButton(
              onPressed: (){
                Get.to(() => const OffPage2());
              }, 
              child: const Text('Go to Page2 with GetX'),
            ),
          ],
        ),
      ),
    );
  }
}