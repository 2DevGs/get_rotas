import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/offAll/off_all_page1.dart';

class OffAllHomePage extends StatelessWidget {

  const OffAllHomePage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OFF ALL Home Page'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context){
                      return const OffAllPage1();
                    },
                    settings: const RouteSettings(name: 'Page1'),
                  )
                );
              }, 
              child: const Text('Go to Page 1 with Flutter Native'),
            ),
            TextButton(
              onPressed: (){
                Get.to(() => const OffAllPage1());
              }, 
              child: const Text('Go to Page 1 with GetX'),
            ),
          ],
        ),
      ),
    );
  }
}