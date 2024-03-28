import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grape_master/screens/video_Course_Screen/home/cupens_sceen.dart';
import 'package:grape_master/util/color.dart';
import 'package:grape_master/util/constants.dart';
import 'package:page_transition/page_transition.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kgreen,
        title: Text("Cart"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Row(
                    //   children: [
                    //     Expanded(
                    //       child: Container(
                    //         height: 35,
                    //         decoration: BoxDecoration(
                    //             border: Border.all(width: 0.65, color: kblack)),
                    //         child: Padding(
                    //           padding:
                    //               const EdgeInsets.symmetric(horizontal: 10),
                    //           child: TextFormField(
                    //             cursorColor: klime,
                    //             // controller: ePv.discriptionController,
                    //             maxLines: 10,
                    //             onChanged: (value) {},
                    //             style: TextStyle(fontSize: 13),
                    //             decoration: InputDecoration(
                    //                 //  focusedBorder:InputBorder(borderSide: ) ,
                    //                 // helperStyle: TextStyle(color: vborder, fontSize: 20),
                    //                 hintStyle: TextStyle(
                    //                     color:
                    //                         Color.fromARGB(255, 145, 142, 142),
                    //                     fontSize: 13,
                    //                     fontWeight: FontWeight.w300),
                    //                 hintText: "Enter Coupon ",
                    //                 border: InputBorder.none),
                    //             validator: (text) {
                    //               if (text!.isEmpty) {
                    //                 return "Address";
                    //               }
                    //               return null;
                    //             },
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     Container(
                    //       alignment: Alignment.center,
                    //       height: 35,
                    //       width: 100,
                    //       color: kgreen,
                    //       child: Text(
                    //         "Apply",
                    //         style: TextStyle(
                    //             color: kwhite,
                    //             fontSize: 15,
                    //             fontWeight: FontWeight.w600),
                    //       ),
                    //     )
                    //   ],
                    // ),

                    Text(
                      "1 Course in cart",
                      style: TextStyle(
                          color: kblack,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Divider(),
                    // Row(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Column(
                    //       children: [
                    //         Container(
                    //           height: 45,
                    //           width: 50,
                    //           decoration: BoxDecoration(
                    //               color: kblack,
                    //               image: DecorationImage(
                    //                   fit: BoxFit.cover,
                    //                   image: NetworkImage(
                    //                       "https://img.freepik.com/free-vector/flat-people-business-training_52683-60493.jpg?w=740&t=st=1711439507~exp=1711440107~hmac=65d8c26e7970a58e9f14a12695bada1c26866aedf580abaf66c6fe0eae0e9ce1"))),
                    //           child: Icon(
                    //             Icons.play_circle,
                    //             color: kgreen,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //     w10,
                    //     Expanded(
                    //       child: Column(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Text(
                    //               "The Completed 2024 Grapes Information Course",
                    //               style: TextStyle(
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: 18),
                    //             ),
                    //             Column(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 Row(
                    //                   children: [
                    //                     Icon(
                    //                       Icons.star,
                    //                       color: Colors.orange,
                    //                     ),
                    //                     Icon(
                    //                       Icons.star,
                    //                       color: Colors.orange,
                    //                     ),
                    //                     Icon(
                    //                       Icons.star,
                    //                       color: Colors.orange,
                    //                     ),
                    //                     Icon(
                    //                       Icons.star,
                    //                       color: Colors.orange,
                    //                     ),
                    //                     Icon(
                    //                       Icons.star,
                    //                       color: Colors.orange,
                    //                     ),
                    //                     Text(
                    //                       "5.0",
                    //                       style: TextStyle(
                    //                           color: kblack,
                    //                           fontSize: 14,
                    //                           fontWeight: FontWeight.w500),
                    //                     ),
                    //                     w2,
                    //                     Text(
                    //                       "(74 reviews)",
                    //                       style: TextStyle(
                    //                           color: Color.fromARGB(
                    //                               255, 144, 143, 143),
                    //                           fontSize: 12,
                    //                           fontWeight: FontWeight.w300),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ],
                    //             ),
                    //             h5,
                    //             Container(
                    //               alignment: Alignment.center,
                    //               height: 30,
                    //               color: kgreen,
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(3.0),
                    //                 child: Text(
                    //                   "Updated Recently",
                    //                   style: TextStyle(
                    //                       color: kwhite,
                    //                       fontSize: 14,
                    //                       fontWeight: FontWeight.w400),
                    //                 ),
                    //               ),
                    //             ),
                    //             h5,
                    //             Text(
                    //               "61.5 total hours . 373 lectures . All Levels",
                    //               style: TextStyle(
                    //                   color: Color.fromARGB(255, 98, 97, 97),
                    //                   fontSize: 13,
                    //                   fontWeight: FontWeight.w300),
                    //             ),
                    //           ]),
                    //     ),

                    //     Icon(
                    //       Icons.delete,
                    //       color: kgreen,
                    //     )
                    //   ],
                    // ),

                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        // height: 290,
                        // width: 280,
                        decoration: BoxDecoration(
                            color: kwhite,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            "https://img.freepik.com/free-vector/flat-people-business-training_52683-60493.jpg?w=740&t=st=1711439507~exp=1711440107~hmac=65d8c26e7970a58e9f14a12695bada1c26866aedf580abaf66c6fe0eae0e9ce1")),
                                    color: kgreen,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15))),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            Icons.delete,
                                            color: kgreen,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "The Completed 2024 Grapes Information Course",
                                            style: TextStyle(
                                                color: kblack,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700),
                                          ),
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
                                      "61.5 total hours . 373 lectures . All Levels",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 98, 97, 97),
                                          fontSize: 13,
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
                                          "(74 reviews)",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 144, 143, 143),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      thickness: 0.75,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.play_lesson,
                                              color: Color.fromARGB(
                                                  255, 144, 143, 143),
                                            ),
                                            Text(
                                              "20 Lesions",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 144, 143, 143),
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
                                              color: Color.fromARGB(
                                                  255, 144, 143, 143),
                                            ),
                                            Text(
                                              "512 Enrolled",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 144, 143, 143),
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

                    h10,

                    // Row(
                    //   children: [
                    //     Text(
                    //       "Total :- ",
                    //       style: TextStyle(
                    //           color: Color.fromARGB(255, 98, 97, 97),
                    //           fontSize: 25,
                    //           fontWeight: FontWeight.w500),
                    //     ),
                    //     Text(
                    //       "₹200.00",
                    //       style: TextStyle(
                    //           color: kblack,
                    //           fontSize: 25,
                    //           fontWeight: FontWeight.w500),
                    //     ),
                    //     w10,
                    //     Text(
                    //       "₹3,099 86% off",
                    //       style: TextStyle(
                    //           decoration: TextDecoration.lineThrough,
                    //           color: Color.fromARGB(255, 98, 97, 97),
                    //           fontSize: 19,
                    //           fontWeight: FontWeight.w300),
                    //     ),
                    //   ],
                    // ),

                    //  Divider(),
                    Text(
                      "Coupons",
                      style: TextStyle(
                          color: kblack,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    h10,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType
                                .fade, // Choose your desired animation type
                            child: CoupensScreen(),
                          ),
                        );
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 5,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Image.asset(
                                      'assets/images/discount.png',
                                      height: 25,
                                      color: const Color.fromARGB(
                                          255, 65, 162, 241),
                                    ),
                                    title: Text(
                                      "Save ₹200 more with HUNGRAY100",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    subtitle: Row(
                                      children: [
                                        Text(
                                          "View all restaurant coupons",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Icon(Icons.arrow_right,
                                            color: Colors.red)
                                      ],
                                    ),
                                  ),
                                  Divider(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.payment,
                                              size: 20,
                                              color: const Color.fromARGB(
                                                  255, 122, 119, 119)),
                                          w10,
                                          Text(
                                            "View all payments copons",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: const Color.fromARGB(
                                                    255, 122, 119, 119)),
                                          ),
                                        ],
                                      ),
                                      Icon(Icons.arrow_forward_ios,
                                          size: 20,
                                          color: const Color.fromARGB(
                                              255, 122, 119, 119))
                                    ],
                                  ),
                                  h10
                                ],
                              )),
                        ),
                      ),
                    ),

                    h10,
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                       
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CheckOut Details",
                                style: TextStyle(
                                    color: kblack,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child:  Column( 
                                children: [
                                   Row( 
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [ 
                                    Text(
                                  "Course Amount (inc GST)",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color:Color.fromARGB(255, 114, 112, 112)),
                                ),
                                  Text(
                                  "₹1,770.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color:Color.fromARGB(255, 114, 112, 112)),
                                ),
                                
                                  ],
                                ),
                                                          h10,
                                 Row( 
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [ 
                                    Text(
                                  "IGST(18%)",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color:Color.fromARGB(255, 114, 112, 112)),
                                ),
                                  Text(
                                  "Discount",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color:Color.fromARGB(255, 114, 112, 112)),
                                ),
                                
                                  ],
                                ),
                                     h10,
                                 Row( 
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [ 
                                    Text(
                                  "Discount",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color:Color.fromARGB(255, 114, 112, 112)),
                                ),
                                  Text(
                                  "₹00.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color:kgreen),
                                ),
                                
                                  ],
                                ),
                                h10,
                                 Row( 
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [ 
                                    Text(
                                  "Paying from Wallet",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color:Color.fromARGB(255, 114, 112, 112)),
                                ),
                                  Text(
                                  "₹1,770.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color:Color.fromARGB(255, 114, 112, 112)),
                                ),
                                
                                  ],
                                ),
                                Divider(),
                                  Row( 
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [ 
                                    Text(
                                  "To Pay",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color:kblack),
                                ),
                                  Text(
                                  "₹1,770.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 19,
                                      color:kblack),
                                ),
                                
                                  ],
                                ),
                               
                                
                                ],
                               ),
                             )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                h10,
                // Text(
                //                         "₹200.00",
                //                         style: TextStyle(
                //                             color: kgreen,
                //                             fontSize: 25,
                //                             fontWeight: FontWeight.w700),
                //                       ),
                h5,
                Container(
                  alignment: Alignment.center,
                  height: 45,
                  decoration: BoxDecoration(
                      color: kgreen, borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Checkout",
                    style: TextStyle(
                        color: kwhite,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
