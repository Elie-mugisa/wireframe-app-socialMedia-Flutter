import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {

  final String text;
  const BubbleStories({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                shape: BoxShape.circle
            ),
          ),
          const SizedBox(height: 10,),
          Text(text)
        ],
      ),
    );
  }
}
