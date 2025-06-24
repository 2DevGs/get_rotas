import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/off/off_page3.dart';

class OffPage2 extends StatelessWidget {

  const OffPage2({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OFF Page2'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context){
                      return const OffPage3();
                    }
                  )
                );
              }, 
              child: const Text('Go to Page3 with Flutter Native'),
            ),
            TextButton(
              onPressed: (){
                Get.off(() => const OffPage3());
              }, 
              child: const Text('Go to Page3 with GetX'),
            ),
          ],
        ),
      ),
    );
  }
}