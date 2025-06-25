import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/await%20params/await_params_home_page.dart';
import 'package:get_rotas/navegacao_comum/back/back_home_page.dart';
import 'package:get_rotas/navegacao_comum/off/off_home_page.dart';
import 'package:get_rotas/navegacao_comum/offAll/off_all_home_page.dart';
import 'package:get_rotas/navegacao_comum/send_params/send_params_home_page.dart';
import 'package:get_rotas/navegacao_comum/to/to_home_page.dart';

class NavegacaoComumHomePage extends StatelessWidget {

  const NavegacaoComumHomePage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Navegacao Comum'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Get.to(() => const ToHomePage());
              } ,
              child: const Text('TO (Push)'),
            ),
            ElevatedButton(
              onPressed: (){
                Get.to(() => const BackHomePage());
              } ,
              child: const Text('BACK (Pop)'),
            ),
            ElevatedButton(
              onPressed: (){
                Get.to(() => const OffHomePage());
              } ,
              child: const Text('OFF (Replacement)'),
            ),
            ElevatedButton(
              onPressed: (){
                Get.to(() => const OffAllHomePage());
              } ,
              child: const Text('OFF ALL (PopAndRemoveUntil)'),
            ),
            ElevatedButton(
              onPressed: (){
                Get.to(() => const SendParamsHomePage());
              } ,
              child: const Text('Send Params'),
            ),
            ElevatedButton(
              onPressed: (){
                Get.to(() => const AwaitParamsHomePage());
              } ,
              child: const Text('Await Params'),
            ),
          ],
        ),
      ),
    );
  }
}