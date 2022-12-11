import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  
  final Function() callback;
  final String text;

  const BlueButton({super.key, required this.callback, required this.text});
  

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
            elevation: 2,
            highlightElevation: 5,
            color: Colors.blue,
            shape: StadiumBorder(),
            onPressed: callback,
            child: Container(
              width: double.infinity,
              height: 55,
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            )
          );
  }
}