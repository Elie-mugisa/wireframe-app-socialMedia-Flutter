import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Name User
            Row(
              children: [
                Text(
                  'eliemugisa',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 5,),
                Icon(Icons.keyboard_arrow_down_sharp)
              ],
            ),

            //Actions
            Row(
              children: [
                Icon(
                  Icons.add_box_outlined
                ),
                SizedBox(width: 10,),
                Icon(
                  Icons.menu
                )
              ],
            )
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                //Avatar
                Stack(
                  children: [
                    Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade400
                    ),
                  ),

                  const Positioned(
                    right: 0,
                    bottom: 1,
                    child: Icon(
                      Icons.add_circle,
                      color: Colors.blueAccent,
                      size: 28,
                      ),
                  )
                  ],
                ),
                //Post
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('8',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                        fontSize: 24
                      ),
                    ),
                    Text('Posts')
                  ],
                ),

                //Followers
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('448',
                      style: TextStyle(
                    fontWeight: FontWeight.bold,
                          fontSize: 24
                ),),
                    Text('Followers')
                  ],
                ),

                //Followings
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('500',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24
                      ),
                    ),
                    Text('Following')
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10,),

            //name
            const Text('Elie Mugisa',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),

            const SizedBox(height: 24,),
            //btns
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Expanded(
                 flex: 2,
                 child: ElevatedButton(
                     onPressed: (){},
                     child: Text('Edit Profil')
                 ),
               ),
               const SizedBox(width: 10,),
               Expanded(
                 flex: 2,
                 child: ElevatedButton(
                     onPressed: (){},
                     child: Text('Share Profil')
                 ),
               ),
               const SizedBox(width: 10,),
               Expanded(
                 flex: 1,
                 child: ElevatedButton(
                     onPressed: (){},
                     child:const Icon(
                       Icons.add,
                     )
                 ),
               )
             ],
           ),

            //TapBar
            /*
            TabBar(
                tabs: [
                  Tab(
                    icon: Icon(
                        Icons.grid_on_sharp,
                      color: Colors.grey.shade500,
                    )
                  ),
                  Tab(
                      icon: Icon(
                        Icons.ondemand_video_sharp,
                        color: Colors.grey.shade500,
                      )
                  ),
                 Tab(
                      icon: Icon(
                        Icons.contacts_outlined,
                        color: Colors.grey.shade500,
                      )
                  ),

            )]*/
          ],
        ),
      )
    );
  }
}