import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:grape_master/util/constants.dart';

import '../../../util/color.dart';

class CoupensScreen extends StatelessWidget {
  const CoupensScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: vgrey,
      appBar: AppBar(
        backgroundColor: kgreen,
        title: Text(
          'Coupens',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      body:  AnimationLimiter(
        child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                // scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 500),
              child: SlideAnimation(
                 horizontalOffset: 50.0,
                child: FadeInAnimation(
                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        color: kwhite,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              h10, 
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/discount.png',
                                    height: 25,
                                    color: const Color.fromARGB(255, 65, 162, 241),
                                  ),
                                  w10,
                                  Expanded(
                                    child: Text(
                                      "40% OFF up to  ₹200 using Axis Neo Card",
                                      style: TextStyle(
                                          fontSize: 19, fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                              h10,
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                        "Save ₹200 using with this code",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 97, 175, 238),
                                            fontSize: 15, fontWeight: FontWeight.w500),
                                      ),
                                ),
                                h5,
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 100,
                                decoration: BoxDecoration(
                                  
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width: 1,color: const Color.fromARGB(255, 200, 194, 194))
                                ),
                                child: Text(
                                        "AUDC100",
                                        style: TextStyle(
                                          color: const Color.fromARGB(255, 105, 103, 103),
                                            fontSize: 15, fontWeight: FontWeight.w600),
                                      ),
                                ),
                              Divider(),
                            
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  w10,
                                  Text(
                                    "TAP TO APPLY",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                       color: const Color.fromARGB(255, 105, 103, 103)
                                            ),
                                  ),
                               
                                ],
                              ),
                              h10
                            ],
                          )),
                    ),
                                    ),
                                  ],
                                ),
                              ),
                  )));
                }
        ),
      ),
    );
  }
}
