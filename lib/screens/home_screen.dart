import 'package:flutter/material.dart';
import 'package:mobilelab3/base/res/styles/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Home Screen Listview
      body: ListView(
        children: [
          // Container around 3TC
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),

            // 1/3rd Top Column (TC)
            child: Column(
              children: [
                //TC-Row 1
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween, //Horizonral Alignment in Row Widget
                  children: [
                    //Row 1 - Left Partition
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: AppStyles.headLineStyle3,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Book Tickets",
                          style: AppStyles.headLineStyle1,
                        ),
                      ],
                    ),

                    //Row 1 - Right Partition
                    Container(
                       
                      width: 50, 
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/images/logo.png")

                         )
                        )
                      ),
                  ],
                ),

                //TC-Row 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(" Search icon "), Text(" Empty space")],
                ),
              ],
            ),
          ),

          //ADD MORE LISTVIEW CHILDREN
        ],
      ),
    );
  }
}