import 'package:flutter/material.dart';
import 'package:ui_instaclone/Utils/shop_grid.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: Colors.grey.shade200,
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Icon(
                    Icons.search,
                    color: Colors.grey[500],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text('Search..',
                  style: TextStyle(
                    color: Colors.grey.shade500
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: ShopGrid(),
    );
  }
}