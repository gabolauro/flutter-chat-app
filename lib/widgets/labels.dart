import 'package:flutter/material.dart';


class Labels extends StatelessWidget {
  
  final String route;
  final String message;
  final String actionTitle;

  const Labels({super.key, required this.route, required this.message, required this.actionTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(message, style: TextStyle( color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w300 ),),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, route);
            },
            child: Text(actionTitle, style: TextStyle( color: Colors.blue[600], fontSize: 18, fontWeight: FontWeight.bold ),))
        ],
      ),
    );
  }
}