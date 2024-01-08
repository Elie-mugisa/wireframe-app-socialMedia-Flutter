import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {

  final String name;

  const UserPost({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            //Profile photo
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16, bottom: 16),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade300
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Text('$name@gmail.com',
                        style: TextStyle(
                            color: Colors.grey.shade500
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),

        //post content
        Container(
          height: 350,
          color: Colors.grey[300],
        ),

        //Post Actions
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ]
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),

        //Liked by...
        const Padding(
          padding: EdgeInsets.only(left: 16, ),
          child: Row(
            children: [
              Text('Liked by '),
              Text('Elie Mugisa', style: TextStyle(fontWeight: FontWeight.bold),),
              Text(' and '),
              Text('others', style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        
        //caption
        Padding(
          padding: EdgeInsets.only(left: 16.0, top: 8,),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black),
              children: [
                TextSpan(
                    text: name,
                    style: const TextStyle(fontWeight: FontWeight.bold)
                ),
                const TextSpan(
                    text: ' I turn the dirt they trhrowing into riches til fithy, you see?')
              ],
            ),
          ),
        )
      ],
    );
  }
}
