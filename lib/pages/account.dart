// ignore_for_file: prefer_const_constructors

import 'package:first_app/util/account_tab1.dart';
import 'package:first_app/util/account_tab2.dart';
import 'package:first_app/util/account_tab3.dart';
import 'package:first_app/util/account_tab4.dart';
import 'package:first_app/util/bubble_stories.dart';
import 'package:flutter/material.dart';

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Row(
                children: [
                  //profile picture
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  // number of posts, followers, following
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('237',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30)),
                            Text('Posts')
                          ],
                        ),
                        Column(
                          children: [
                            Text('3930',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30)),
                            Text('Followers')
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '5',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            Text('Following')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Name and Bio
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'sonamdorjigs_7',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Text(
                      'I create apps and games',
                    ),
                  ),
                  Text(
                    'm.youtube.com/sonam/',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(child: Text('Edit Profile')),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(child: Text('Ad Tools')),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(child: Text('Insights')),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //stories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  BubbleStories(text: 'story 1'),
                  BubbleStories(text: 'story 2'),
                  BubbleStories(text: 'story 3'),
                  BubbleStories(text: 'story 4'),
                ],
              ),
            ),

            TabBar(tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3_outlined),
              ),
              Tab(
                icon: Icon(Icons.video_call),
              ),
              Tab(
                icon: Icon(Icons.shop),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ]),

            Expanded(
                child: TabBarView(
              children: [
                AccountTab1(),
                AccountTab2(),
                AccountTab3(),
                AccountTab4(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
