import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:grape_master/screens/video_Course_Screen/home/Add_to_cart.dart';
import 'package:grape_master/util/color.dart';
import 'package:grape_master/util/constants.dart';
import 'package:page_transition/page_transition.dart';

class PlayListDetailsPage extends StatelessWidget {
  const PlayListDetailsPage({super.key, this.image});
  final image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kgreen,
        ),
        body: AnimationLimiter(
            child: AnimationConfiguration.staggeredList(
          position: 0,
          duration: const Duration(milliseconds: 500),
          child: SlideAnimation(
            verticalOffset: 50.0,
            child: FadeInAnimation(
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //  Padding(
                      //    padding: const EdgeInsets.all(8.0),
                      //    child: Row(
                      //                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //                        children: [
                      //                          InkWell(
                      //                            onTap: () {
                      //                              Navigator.pop(context);
                      //                            },
                      //                            child: CircleAvatar(
                      //                              radius: 30,
                      //                              backgroundColor: Color.fromARGB(255, 236, 232, 232),
                      //                              child: CircleAvatar(
                      //                                backgroundColor: kwhite,
                      //                                radius: 28,
                      //                                child: Icon(
                      //                                  Icons.arrow_back,
                      //                                  size: 30,
                      //                                  color: kgreen,
                      //                                ),
                      //                              ),
                      //                            ),
                      //                          ),
                      //                          Text(
                      //                            "Search",
                      //                            style: TextStyle(
                      //                                color: kblack,
                      //                                fontSize: 25,
                      //                                fontWeight: FontWeight.w500),
                      //                          ),
                      //                          Text(
                      //                            "          ",
                      //                            style: TextStyle(
                      //                                color: kblack,
                      //                                fontSize: 25,
                      //                                fontWeight: FontWeight.w500),
                      //                          ),
                      //                        ],
                      //                      ),
                      //              ),
                      // h10,
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            color: kgreen,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(image),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            h10,
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: SizedBox(
                                child: Text(
                                  "Meug Bahar Managment Full Course",
                                  style: TextStyle(
                                      color: kblack,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 144, 143, 143),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300),
                            ),
                            h10,
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
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
                                  " (74 reviews)",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 144, 143, 143),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            h10,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.play_lesson,
                                      color: Color.fromARGB(255, 144, 143, 143),
                                    ),
                                    Text(
                                      "  20 Lesions",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 144, 143, 143),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            h5,
                            Row(
                              children: [
                                Icon(
                                  Icons.people,
                                  color: Color.fromARGB(255, 144, 143, 143),
                                ),
                                Text(
                                  "  512 Enrolled",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 144, 143, 143),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            h5,
                            Row(
                              children: [
                                Icon(
                                  Icons.language,
                                  color: Color.fromARGB(255, 144, 143, 143),
                                ),
                                Text(
                                  "  English",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 144, 143, 143),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType
                                          .fade, // Choose your desired animation type
                                      child: AddToCart(),
                                    ),
                                  );
                                },
                                child: PayButtom()),
                            h20,
                            Text(
                              "What You'll learn",
                              style: TextStyle(
                                  color: kblack,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: Color.fromARGB(255, 144, 143, 143),
                                ),
                                Text(
                                  "Promegranate Bahar Managment 2024",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 144, 143, 143),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: Color.fromARGB(255, 144, 143, 143),
                                ),
                                Text(
                                  "Nutrition Managment",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 144, 143, 143),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: Color.fromARGB(255, 144, 143, 143),
                                ),
                                Text(
                                  "Irrigration Managment ",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 144, 143, 143),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            h10,
                            Text(
                              "Curriculum",
                              style: TextStyle(
                                  color: kblack,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "44 sections > 18 Videos > 3 hrs, 29 min ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 144, 143, 143),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400),
                            ),
                            h10,
                            VideosPlayList(),
                            h10,
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )));
  }
}

class PayButtom extends StatelessWidget {
  const PayButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        h10,
        Text(
          "₹200.00",
          style: TextStyle(
              color: kgreen, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        h5,
        Container(
          alignment: Alignment.center,
          height: 45,
          decoration: BoxDecoration(
              color: kgreen, borderRadius: BorderRadius.circular(5)),
          child: Text(
            "Buy Now",
            style: TextStyle(
                color: kwhite, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        // SizedBox(
        //   height: 100,
        //   child: ANimation())
      ],
    );
  }
}

class VideosPlayList extends StatelessWidget {
  const VideosPlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        physics: NeverScrollableScrollPhysics(),
        // scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return ExpansionTile(
            // backgroundColor: kblack,
            initiallyExpanded: false,
            childrenPadding: EdgeInsets.symmetric(vertical: 10),
            title: Text("Storage Stage - Bahar Scenario"),

            children: [
              ListTile(
                leading: Text("1"),
                title: Text("Introduction Bahar Scenario"),
                subtitle: Text(" video - 0.36 min"),
                trailing: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: kblack,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://img.freepik.com/free-vector/flat-people-business-training_52683-60493.jpg?w=740&t=st=1711439507~exp=1711440107~hmac=65d8c26e7970a58e9f14a12695bada1c26866aedf580abaf66c6fe0eae0e9ce1"))),
                  child: Icon(
                    Icons.play_circle,
                    color: kgreen,
                  ),
                ),
              )
            ],
          );
        });
  }
}

class ANimation extends StatelessWidget {
  const ANimation({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: Text("jdjdjdjd"),
              ),
            ),
          );
        },
      ),
    );
  }
}
