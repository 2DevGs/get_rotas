import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/offAll/off_all_page3.dart';

class OffAllPage2 extends StatelessWidget {

  const OffAllPage2({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OFF ALL Page2'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context){
                      return const OffAllPage3();
                    },
                  ),
                  (route) => false,
                );
              }, 
              child: const Text('Go to Page 3 excluding the entire navigation tree with Flutter Native'),
            ),
            TextButton(
              onPressed: (){
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context){
                      return const OffAllPage3();
                    },
                  ),
                  ModalRoute.withName('/OffAllHomePage'),
                );
              }, 
              child: const Text('Go to Page 3 excluding part of the navigation tree with Flutter Native'),
            ),
            TextButton(
              onPressed: (){
                Get.offAll(() => const OffAllPage3(), predicate: ModalRoute.withName('/OffAllHomePage'),);
              }, 
              child: const Text('Go to Page 3 excluding part of the navigation tree with GetX'),
            ),
          ],
        ),
      ),
    );
  }
}