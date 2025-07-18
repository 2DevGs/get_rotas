import 'package:flutter/material.dart';
import 'package:get_rotas/navegacao_comum/to/page2.dart';

class Page1 extends StatelessWidget {

  const Page1({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 1'),),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context){
                    return const Page2();
                  }
                ));
              // Get.to(() => const Page2());
            },
            child: const Text('Page 2'),
          ),
        ],
      ),
    );
  }
}