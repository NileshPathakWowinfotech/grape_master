import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:grape_master/screens/auth/LocalString.dart';
import 'package:grape_master/util/color.dart';
import 'package:grape_master/util/constants.dart';

class MyCourseLIst extends StatelessWidget {
  const MyCourseLIst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
          backgroundColor: kgreen,
          title: Text(
        "My Course",
            style: TextStyle(
                color: kwhite, fontWeight: FontWeight.w400, fontSize: 22),
          )),

          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Material(  
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(  
                    height: 150,
                   decoration: BoxDecoration(  
                    borderRadius: BorderRadius.circular(10)
                   ), 
                   child: Padding(
                     padding: const EdgeInsets.all(3.0),
                     child: Row(  
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        CircleAvatar( 
                          radius: 50,
                          backgroundImage: NetworkImage("https://img.freepik.com/free-vector/flat-people-business-training_52683-60493.jpg?w=740&t=st=1711439507~exp=1711440107~hmac=65d8c26e7970a58e9f14a12695bada1c26866aedf580abaf66c6fe0eae0e9ce1"),
                        ),
                        w10,
                      Expanded(
                        child: Column( 
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ 
                            h10,
                           Text(
                                 "Meug Bahar Managment Full Course",
                                    style: TextStyle(
                                        color: kblack, fontWeight: FontWeight.w500, fontSize: 23),
                                  ),
                                  h5,
                                   Row(
                                     crossAxisAlignment: CrossAxisAlignment.start,
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
                                    h10,
                                    Text("10/4"),
                                   
                                     Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          width: 300,
          height: 5,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: LinearProgressIndicator(
              value: 0.4,
              valueColor: AlwaysStoppedAnimation<Color>(kgreen),
              backgroundColor: Color(0xffD6D6D6),
            ),
          ),
        )
                          ],
                        ),
                      )
                       ],
                                       ),
                   ),
                ),
            )],
            ),
          ),
          
    );
  }
}