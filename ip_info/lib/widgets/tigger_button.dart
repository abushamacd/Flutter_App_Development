import 'package:flutter/material.dart';
import 'package:ip_info/style/app_colors.dart';

class TiggerButton extends StatelessWidget {
  const TiggerButton({
    super.key,
    required this.text,
    required this.icon,
  });

  final text;
  final icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(AppColor.buttonBg),
      ),
      onPressed: () {
        // print(ipInputController.text);
      },
      child: Row(
        children: [
          Text(
            "${text}",
            style: TextStyle(
              fontSize: 20,
              color: AppColor.buttonText,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset(
              icon,
              width: 20.0,
            ),
          )
        ],
      ),
    );
  }
}
