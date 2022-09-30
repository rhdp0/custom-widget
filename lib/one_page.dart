import 'package:custom_widget/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  bool disableButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButtonWidget(
          disable: disableButton,
          onPressed: () {},
          title: 'Custom Button',
          titleSize: 18,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: disableButton == false ? Colors.red : Colors.green,
        onPressed: () {
          setState(() {
            if (disableButton == false) {
              disableButton = true;
            } else {
              disableButton = false;
            }
          });
        },
        child: Icon(disableButton == false ? Icons.block : Icons.check),
      ),
    );
  }
}
