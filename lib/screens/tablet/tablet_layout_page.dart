import 'package:flutter/material.dart';
import 'package:myself/constants/colors.dart';
import 'package:myself/constants/styles.dart';
import 'package:myself/screens/widgets/count_container_widget.dart';
import 'package:myself/screens/widgets/download_cv_widget.dart';
import 'package:myself/screens/widgets/header_text_widget.dart';
import 'package:myself/screens/widgets/rotating_image.dart';
import 'package:myself/screens/widgets/social_widget.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
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
          child: Container(
            margin: EdgeInsets.symmetric(vertical: size.height * 0.18),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                  height: 20,
                ),
                Container(
                  width: size.width,
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CountWidget(
                        size: size,
                        text1: "4",
                        text2: " Flutter",
                        text3: "Projects",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: AppColors.paleSlate,
                        indent: size.width * 0.05,
                        endIndent: size.width * 0.05,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CountWidget(
                        size: size,
                        text1: "8",
                        text2: "Courses &",
                        text3: "Certification",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: AppColors.paleSlate,
                        indent: size.width * 0.05,
                        endIndent: size.width * 0.05,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CountWidget(
                        size: size,
                        text1: "1.5K",
                        text2: "Social Media",
                        text3: "Followers",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: AppColors.paleSlate,
                        indent: size.width * 0.05,
                        endIndent: size.width * 0.05,
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
      ),
    );
  }
}

class Social_Tab extends StatelessWidget {
  const Social_Tab({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DownloadCVButton(),
          SizedBox(
            height: 20,
          ),
          SocialWidget(),
        ],
      ),
    );
  }
}
