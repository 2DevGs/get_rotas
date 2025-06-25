import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/await%20params/await_params_page1.dart';

class AwaitParamsHomePage extends StatelessWidget {

  const AwaitParamsHomePage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AWAIT Params Home'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                final result = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context){
                      return const AwaitParamsPage1();
                    },
                  ),
                );
                debugPrint(result);
              }, 
              child: const Text('Go to Page 1 with Flutter Native'),
            ),
            TextButton(
              onPressed: () async {
                final result = await Get.to(() => const AwaitParamsPage1());
                debugPrint(result);
              }, 
              child: const Text('Go to Page 1 with GetX'),
            ),
          ],
        ),
      ),
    );
  }
}