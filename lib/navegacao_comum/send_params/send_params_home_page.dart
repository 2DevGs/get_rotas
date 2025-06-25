import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/send_params/send_params_page1.dart';

class SendParamsHomePage extends StatelessWidget {

  const SendParamsHomePage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Send Params Home Page'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context){
                      return const SendParamsPage1();
                    },
                    settings: const RouteSettings(
                      arguments: 'Parameter with Native Flutter',
                    ),
                  )
                );
              }, 
              child: const Text('Go to Page 1 with Flutter Native'),
            ),
            TextButton(
              onPressed: (){
                Get.to(() => const SendParamsPage1(),arguments: 'Parameter with GetX');
              }, 
              child: const Text('Go to Page 1 with GetX'),
            ),
          ],
        ),
      ),
    );
  }
}