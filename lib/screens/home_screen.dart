import 'dart:math';

import 'package:change_notifier_example/controllers/custom_container_controller.dart';
import 'package:change_notifier_example/widget/custom_button.dart';
import 'package:change_notifier_example/widget/custom_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final CustomContainerController _customContainerController=CustomContainerController();

  @override
  void dispose() {
    _customContainerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("at screeeeeeeeeeeen");
    return Scaffold(
      appBar: AppBar(title: const Text("Change Notifier Example"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomContainer(customContainerController: _customContainerController,),
            CustomButton(onPressed: onPressed)
          ],
        ),
      ),
    );
  }

  void onPressed (){
    _customContainerController.changeContainerAttrbutes();
  }

}

