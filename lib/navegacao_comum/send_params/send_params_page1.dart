import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendParamsPage1 extends StatelessWidget {

  const SendParamsPage1({ super.key });

   @override
   Widget build(BuildContext context) {

    final paramNative = ModalRoute.of(context)?.settings.arguments ?? 'Param não enviado';
    final paramGetX = Get.arguments ?? 'Param não enviado';

    return Scaffold(
      appBar: AppBar(title: const Text('Receiving Params'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nativo: $paramNative'),
            Text('Get: $paramGetX'),
          ],
        ),
      ),
    );
  }
}