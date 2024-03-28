import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:grape_master/screens/Home/home.dart';
import 'package:grape_master/screens/Home/home_controller.dart';
import 'package:grape_master/screens/auth/LocalString.dart';
import 'package:grape_master/screens/live/live_tabs.dart';
import 'package:grape_master/screens/post/post_screen.dart';
import 'package:grape_master/screens/video_Course_Screen/home/Home_screen.dart';
import 'package:grape_master/util/color.dart';
import 'package:grape_master/util/constants.dart';
import 'package:grape_master/util/image_assets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';


class VideosHomeScreen extends StatefulWidget {
  const VideosHomeScreen({super.key});

  @override
  State<VideosHomeScreen> createState() => _VideosHomeScreenState();
}

class _VideosHomeScreenState extends State<VideosHomeScreen> {

  int _currentIndex = 0;

  final List<Widget> _pages = [
    // Add your pages/widgets here
    // Example:
    HomeScreenVideo(),
    PostDetails(),
    MyFarms()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
     body: _pages[_currentIndex],

       bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: kgreen,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Icon(
                    Icons.home,
                    size: 30,
                  ),
                ),
                label: "${txt_home.tr}",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Image.asset(
                    ImageAssets.ic_blog,
                    height: 25,
                    color: _currentIndex == 1 ? kgreen : lbottom,
                  ),
                ),
                label: '${txt_my_post.tr}',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Image.asset(
                    ImageAssets.ic_live,
                    height: 25,
                    color: _currentIndex == 2 ? kgreen : lbottom,
                  ),
                ),
                label: '${txt_live.tr}',
              ),
            ],
          ),
    );
  }
} 



