import 'package:flutter/material.dart';

import 'package:myself/constants/styles.dart';
import 'package:myself/screens/tablet/tablet_layout_page.dart';

import 'package:myself/screens/widgets/header_text_widget.dart';

import 'package:myself/screens/widgets/rotating_image.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PORTFOLIO',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.normal,
              fontSize: 14),
        ),
        backgroundColor: Color.fromARGB(224, 27, 1, 37),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mail,
                color: Colors.white,
              )),
          Text(
            'asifmajeed2081@gmail.com',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.normal),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.contact_phone,
                color: Colors.white,
              )),
          Text(
            'Contact Details:+916282767185',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: size.height * 0.18),
            child: Column(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [RotatingImageContainer()],
                  ),
                ),
                SizedBox(
                  height: size.width * 0.09,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            HeaderTextWidget(
                              size: size,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Social_Tab(size: size)
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: size.width * 0.09,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
