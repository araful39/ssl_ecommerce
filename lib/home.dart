import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/home_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("SSL Commerz"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  debugPrint("=========== Start Call ============");
                  await homeController.sslCommerzCustomizedCall(amount: 500);
                  debugPrint("=========== End Call ============");
                },
                child: const Text("Payment Now"))
          ],
        ),
      ),
    );
  }
}
