import 'package:change_notifier_example/controllers/custom_container_controller.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({super.key,required this.customContainerController});
  final CustomContainerController customContainerController;

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  void initState() {
    super.initState();
    widget.customContainerController.addListener(() {
      setState(() {});
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      height: widget.customContainerController.height,
      width: widget.customContainerController.width,
      color: widget.customContainerController.color,
    );
  }
}