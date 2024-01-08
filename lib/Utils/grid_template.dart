import 'package:flutter/material.dart';

class GridTemplate extends StatefulWidget {
  const GridTemplate({super.key});

  @override
  State<GridTemplate> createState() => _GridTemplateState();
}

class _GridTemplateState extends State<GridTemplate> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 16,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              color: Colors.deepPurpleAccent[100],
            ),
          );
        });
  }
}
