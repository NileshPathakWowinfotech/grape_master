import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grape_master/screens/video_Course_Screen/home/Home_screen.dart';
import 'package:grape_master/util/color.dart';
import 'package:grape_master/util/constants.dart';

class SearchHomeScreen extends StatelessWidget {
  const SearchHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: vgrey,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: vgrey,
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Column( 
                  children: [ 
                      Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Color.fromARGB(255, 236, 232, 232),
                          child: CircleAvatar(
                            backgroundColor: kwhite,
                            radius: 28,
                            child: Icon(
                              Icons.arrow_back,
                              size: 30,
                              color: kgreen,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                            color: kblack,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "          ",
                        style: TextStyle(
                            color: kblack,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  h10,
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                        color: kwhite,
                        border: Border.all(color: vborder, width: 1.5),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, right: 5),
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
                              // enabled: false,
                              cursorColor: klime,
                              // controller: ePv.discriptionController,
                              maxLines: 10,
                              onChanged: (value) {},
                              style: TextStyle(fontSize: 13),
                              decoration: InputDecoration(
                                  //  focusedBorder:InputBorder(borderSide: ) ,
                                  helperStyle:
                                      TextStyle(color: vborder, fontSize: 20),
                                  hintStyle: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 192, 187, 187),
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
                  ],
                ),
                 
               Expanded(
                 child: SingleChildScrollView(
                   child: Column( 
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Top Searches",
                          style: TextStyle(
                              color: kblack,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                         SizedBox(
                   
                          // height: 100,
                          child: ChipList()),
                          h10,
                          Text(
                          "Browse Categories",
                          style: TextStyle(
                              color: kblack, fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        BrowseCategoreyList()
                    ],
                   ),
                 ),
               )
                ],
              ),
            )),
      ),
    );
  }
}

class ChipList extends StatelessWidget {
  final List<String> chipLabels = [
    'Apple',
    'Banana',
    'Orange',
    'Grapes',
    'Watermelon',
    'Pineapple',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: kblack)),
                  child: Text("Apple"),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: kblack)),
                  child: Text("Orange"),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: kblack)),
                  child: Text("Grapes"),
                ),
              ],
            ),
            h10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: kblack)),
                  child: Text("Apple"),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: kblack)),
                  child: Text("Orange"),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: kblack)),
                  child: Text("Onion"),
                ),
              ],
            ),
        
        
          ],
        ));
  }
}

class BrowseCategoreyList extends StatelessWidget {
  const BrowseCategoreyList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          shrinkWrap: true,
          itemCount:10,
          physics: NeverScrollableScrollPhysics(),
          // scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column( 
        children: [
        ListTile( 
          leading: Icon(Icons.category),
          title: Text("Grape Master Application intoduction video"),
          trailing:  Icon(Icons.keyboard_arrow_right),
        
        ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 18),
               child: Divider(),
             ),
      
        ],
      );
          }
    );
  }
}
