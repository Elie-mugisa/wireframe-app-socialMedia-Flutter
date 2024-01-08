import 'package:flutter/material.dart';
import 'package:ui_instaclone/Utils/bubble_stories.dart';
import 'package:ui_instaclone/Utils/user_post.dart';

class MyHome extends StatefulWidget {

   const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final List people = ['elie', 'patrick', 'chance', 'dena', 'fabrice', 'olivier', 'archil'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram',
              style: TextStyle(fontSize: 24),),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            )
          ]
        ),
      ),
      body: Column(
        children: [
          //Stories
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(
                      text: people[index]
                  );
                }
            )
          ),

          //post
          Expanded(
              child: ListView.separated(
                itemCount: people.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    return UserPost(
                        name: people[index]
                    );
                  },
                  separatorBuilder: (context, index){
                    return Divider(
                      height: 60,
                      thickness: 1.5,
                      color: Colors.grey[200],
                    );
                  },

              )
          )

        ],
      )
    );
  }
}
