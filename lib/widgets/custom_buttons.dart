import 'package:flutter/material.dart';
import 'package:instagram_clones/utils/color_utils.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.title, required this.buttonColor});

  final VoidCallback? onPressed;
  final String title;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  4), 
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color?>(buttonColor),
        ),
        onPressed: onPressed,
        child: Container(
            child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: white,
          ),
        )),
      ),
    );
  }
}
