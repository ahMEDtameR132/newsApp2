import 'package:flutter/material.dart';

class CategoryNew extends StatelessWidget {
  const CategoryNew({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundColor: Colors.teal,
            backgroundImage: AssetImage("lib/assets/pasta_15_2.jpg"),
            radius: 55,
            child: Text("Healthy",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
        );
  }
}