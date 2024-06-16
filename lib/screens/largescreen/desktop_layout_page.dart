import 'package:flutter/material.dart';
import 'package:myself/constants/styles.dart';
import 'package:myself/screens/widgets/count_container_widget.dart';
import 'package:myself/screens/widgets/header_text_widget.dart';
import 'package:myself/screens/widgets/rotating_image.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
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
              fontWeight: FontWeight.normal),
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
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: size.height * 0.18),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        HeaderTextWidget(
                          size: size,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Social_large(size: size),
                      ],
                    ),
                    Expanded(
                        child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [RotatingImageContainer()],
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CountWidget(
                      size: size,
                      text1: "4",
                      text2: "Flutter",
                      text3: "Projects",
                    ),
                    CountWidget(
                      size: size,
                      text1: "8",
                      text2: "Courses &",
                      text3: "Certification",
                    ),
                    CountWidget(
                      size: size,
                      text1: "1.5K",
                      text2: "Social Media",
                      text3: "Followers",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
