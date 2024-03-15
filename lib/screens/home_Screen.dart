import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:grape_master/screens/Home/home_controller.dart';
import 'package:grape_master/screens/auth/LocalString.dart';
import 'package:grape_master/screens/post/post_screen.dart';
import 'package:grape_master/util/color.dart';
import 'package:grape_master/util/constants.dart';
import 'package:grape_master/util/image_assets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import 'Home/blog details.dart';
import 'Home/home.dart';
import 'Home/notification.dart';
import 'auth/drawer.dart';
import 'drawer.dart';
import 'live/live_tabs.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    // Add your pages/widgets here
    // Example:
    Home(),
    PostDetails(),
    MyFarms()
  ];
  HomeController? eProvider;

  @override
  void initState() {
    eProvider = Provider.of<HomeController>(context, listen: false);
    init();
    eProvider?.notification(context); 
    // TODO: implement initState
    super.initState();
  }

  void init() async {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await eProvider?.notification(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
     
          onWillPop: () async {
        // Show a dialog and handle user's response
        if (eProvider?.quizeModelLIst?.DATA?.length == 0) {
          Navigator.of(context).pop(true);
          return false;
        } else {
          bool shouldPop = await showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                insetPadding: EdgeInsets.all(12),
                contentPadding: EdgeInsets.zero,
                content: SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                ImageAssets.ic_logo,
                                height: 50,
                              ),
                              Text(
                                'Grape Master',
                                style: TextStyle(
                                    color: kblack, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              exit.tr,
                              style: TextStyle(
                                  color: kblack, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pop(false); // Cancel pop
                                  },
                                  child: Text(
                                    nomsg.tr,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                ),
                                SizedBox(width: 30),
                                InkWell(
                                  onTap: () {
                                      SystemNavigator.pop(animated: true);
                                    Navigator.of(context)
                                        .pop(true); // Allow pop
                                  },
                                  child: Text(
                                    yes.tr,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
          return shouldPop ?? false;
        }
        
      },
      child: Consumer<HomeController>(builder: (context, ePv, child) {
        return Scaffold(
          appBar: AppBar(
            elevation: 1,
            backgroundColor: kgreen,
            automaticallyImplyLeading: true,
            iconTheme: IconThemeData(size: 30, color: kwhite),
            //      leading: IconButton(
            //   icon: Icon(Icons.menu, color: kwhite),
            //   onPressed: () {
            //     Scaffold.of(context).openDrawer(); // This line opens the drawer
            //   },
            // ),
            actions: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType
                          .fade, // Choose your desired animation type
                      child: NotificationScreen(),
                    ),
                  );
                },
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        size: 35,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 12,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.blue, // Customize color as needed
                        child: Text(
                       "${ePv?.notificationModel?.data.length == 0||ePv?.notificationModel?.data == null ?"0":ePv?.notificationModel?.data[0].unseenCount}", // You can use the actual notification count here
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              w20,
            ],
            
            title: Column(
              children: [
                Text('Grape Master',
                    style: TextStyle(
                      color: kwhite,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                h2,
                Text('All crop Solution',
                    style: TextStyle(color: kwhite, fontSize: 12)),
              ],
            ),
          ),
          drawer: MyDrawer(),
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
      ),
    );
  }

  Future<bool> _oneButtonPressed(BuildContext context) async {
    DateTime backPressedTime = DateTime.now();
    final differene = DateTime.now().difference(backPressedTime);
    backPressedTime = DateTime.now();

    if (differene >= const Duration(seconds: 2)) {
      Fluttertoast.showToast(
        msg: "Click Again To Close The App",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: kblack,
        textColor: kwhite,
        fontSize: 13.0,
      );
      return false;
    } else {
      SystemNavigator.pop(animated: true);
      return true;
    }
  }
}
