import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:grape_master/screens/video_Course_Screen/home/play_list_detsils.page.dart';
import 'package:grape_master/screens/video_Course_Screen/home/search_screen.dart';
import 'package:grape_master/util/color.dart';
import 'package:grape_master/util/constants.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreenVideo extends StatefulWidget {
  const HomeScreenVideo({super.key});

  @override
  State<HomeScreenVideo> createState() => _HomeScreenVideoState();
}

class _HomeScreenVideoState extends State<HomeScreenVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: vgrey,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Container(
                  // height: 200,
                  width: double.infinity,
                  // color: kgreen,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      h20,
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Row(
                      //       children: [
                      //         CircleAvatar(
                      //           radius: 30,
                      //           backgroundImage: NetworkImage(
                      //               "https://th.bing.com/th/id/OIP.GlIuUj-GYrRL_G8WvZ3YagHaHw?rs=1&pid=ImgDetMain"),
                      //         ),
                      //         w10,
                      //         Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Text(
                      //               "Good Morning",
                      //               style: TextStyle(
                      //                 color: kblack,
                      //                 fontSize: 15,
                      //               ),
                      //             ),
                      //             Text(
                      //               "Nilesh Pathak",
                      //               style: TextStyle(
                      //                   color: kblack,
                      //                   fontSize: 20,
                      //                   fontWeight: FontWeight.w700),
                      //             )
                      //           ],
                      //         )
                      //       ],
                      //     ),
                      //     CircleAvatar(
                      //       radius: 30,
                      //       backgroundColor: Color.fromARGB(255, 236, 232, 232),
                      //       child: CircleAvatar(
                      //         backgroundColor: kwhite,
                      //         radius: 28,
                      //         child: Icon(
                      //           Icons.notifications,
                      //           size: 30,
                      //           color: kgreen,
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                   
                      // h30,
                      SearchBar()
                    ],
                  ),
                ),
              ),
              h20,
            Column( 
              children: [ 
                  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                          color: kblack,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        color: kgreen,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              h10,
              CoursesCategoreyList(),
              h20,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Course",
                      style: TextStyle(
                          color: kblack,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        color: kgreen,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              h10,
              PopularCourceList(),
               h20,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pomegranate Plantaion Mastery 2023 (Hindi)",
                      style: TextStyle(
                          color: kblack,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        color: kgreen,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              h10,
              PopularCourceList()
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         Navigator.push(
            context,
            PageTransition(
              type:
                  PageTransitionType.fade, // Choose your desired animation type
              child: SearchHomeScreen(),
            ),
          );
      },
      child: Container(
        height: 55,
        decoration: BoxDecoration(
            color: kwhite,
            border: Border.all(color: vborder, width: 1.5),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.search,
                size: 30,
                color: kgreen,
              ),
              w2,
              w2,
              Expanded(
                child: TextFormField(
                  enabled: false,
                  cursorColor: klime,
                  // controller: ePv.discriptionController,
                  maxLines: 10,
                  onChanged: (value) {},
                  style: TextStyle(fontSize: 13),
                  decoration: InputDecoration(
                      //  focusedBorder:InputBorder(borderSide: ) ,
                      helperStyle: TextStyle(color: vborder, fontSize: 20),
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 192, 187, 187),
                          fontSize: 19,
                          fontWeight: FontWeight.w300),
                      hintText: "Search Courses..",
                      border: InputBorder.none),
                  validator: (text) {
                    if (text!.isEmpty) {
                      return "Address";
                    }
                    return null;
                  },
                ),
              ),
              Icon(
                Icons.filter_list,
                size: 30,
                color: kgreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CoursesCategoreyList extends StatefulWidget {
  const CoursesCategoreyList({super.key});

  @override
  State<CoursesCategoreyList> createState() => _CoursesCategoreyListState();
}

class _CoursesCategoreyListState extends State<CoursesCategoreyList> {
  List<Map<String, String>> data = [
    {
      'id': "1",
      'name': "Grapes",
      'image':
          "https://images.pexels.com/photos/103826/pexels-photo-103826.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
    {
      'id': "2",
      'name': "Tomato",
      'image':
          "https://images.pexels.com/photos/1327838/pexels-photo-1327838.jpeg?auto=compress&cs=tinysrgb&w=400",
    },
    {
      'id': "3",
      'name': "onion",
      'image':
          "https://images.pexels.com/photos/7129153/pexels-photo-7129153.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
    {
      'id': "4",
      'name': "Soybean",
      'image':
          "https://www.afrimash.com/wp-content/uploads/2020/05/soybean-seeds-1509614723-3428344-1536x1066.jpeg",
    },
    {
      'id': "5",
      'name': "capsicum",
      'image':
          "https://images.pexels.com/photos/7017/food-peppers-kitchen-yum.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
    {
      'id': "6",
      'name': "capsicum",
      'image':
          "https://images.pexels.com/photos/7017/food-peppers-kitchen-yum.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: AnimationLimiter(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 500),
              child: SlideAnimation(
                horizontalOffset: 50.0,
                child: FadeInAnimation(
                  child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: kgreen,
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage(data[index]['image'].toString()),
                          backgroundColor: kwhite,
                          radius: 34,
                        ),
                      ),
                      h5,
                      Text(
                        data[index]['name'].toString(),
                        style: TextStyle(
                            color: kblack,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              )));
            }),
      ),
    );
  }
}

class PopularCourceList extends StatelessWidget {
  const PopularCourceList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 355,
      child: AnimationLimiter(
        child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 500),
              child: SlideAnimation(
                 horizontalOffset: 50.0,
                child: FadeInAnimation(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: (){
                            Navigator.push(
                                context,
                                PageTransition(
                  type:
                      PageTransitionType.fade, // Choose your desired animation type
                  child: PlayListDetailsPage(image: "https://img.freepik.com/free-vector/flat-people-business-training_52683-60493.jpg?w=740&t=st=1711439507~exp=1711440107~hmac=65d8c26e7970a58e9f14a12695bada1c26866aedf580abaf66c6fe0eae0e9ce1",),
                                ),
                              );
                      },
                      child:   Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                                  // height: 290,
                                  width: 280,
                                  decoration:
                        BoxDecoration(color: kwhite, borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://img.freepik.com/free-vector/flat-people-business-training_52683-60493.jpg?w=740&t=st=1711439507~exp=1711440107~hmac=65d8c26e7970a58e9f14a12695bada1c26866aedf580abaf66c6fe0eae0e9ce1")),
                                color: kgreen,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15))),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage: NetworkImage(
                                        "https://th.bing.com/th/id/OIP.GlIuUj-GYrRL_G8WvZ3YagHaHw?rs=1&pid=ImgDetMain"),
                                  ),
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: kwhite,
                                    child: Icon(
                                      Icons.play_circle,
                                      color: kgreen,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Meug Bahar Managment..",
                                      style: TextStyle(
                                          color: kblack,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "₹200",
                                      style: TextStyle(
                                          color: kgreen,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Text(
                                  "This Will be a livewebinar on th Zoom Application.",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 144, 143, 143),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Mentor by",
                                      style: TextStyle(
                                          color: kblack,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    w2,
                                    w2,
                                    Text(
                                      "Ajinkya Shintre",
                                      style: TextStyle(
                                          color: kgreen,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                h5,
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      "5.0",
                                      style: TextStyle(
                                          color: kblack,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    w2,
                                    Text(
                                      "(74 reviews)",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 144, 143, 143),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                Divider(
                                  thickness: 0.75,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.play_lesson,
                                          color: Color.fromARGB(255, 144, 143, 143),
                                        ),
                                        Text(
                                          "20 Lesions",
                                          style: TextStyle(
                                              color: Color.fromARGB(255, 144, 143, 143),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    w2,
                                    w2,
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.people,
                                          color: Color.fromARGB(255, 144, 143, 143),
                                        ),
                                        Text(
                                          "512 Enrolled",
                                          style: TextStyle(
                                              color: Color.fromARGB(255, 144, 143, 143),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                h20
                              ],
                            ),
                          ),
                        ],
                                    ),
                                  ),
                                ),
                      ),
                    ),
                  ),
                )));
              }
        ),
      ),
    );
  }
}
