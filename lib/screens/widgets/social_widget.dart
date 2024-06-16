import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myself/constants/colors.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.studio.withOpacity(0.5))),
          child: Center(
            child: IconButton(
              hoverColor: AppColors.paleSlate,
              onPressed: () {
                launchUrlString(
                    'https://www.linkedin.com/in/asif-majeed-62216b204');
              },
              icon: FaIcon(
                FontAwesomeIcons.linkedinIn,
                color: AppColors.studio,
                size: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.studio.withOpacity(0.5))),
          child: Center(
            child: IconButton(
              hoverColor: AppColors.paleSlate,
              onPressed: () {
                launchUrlString(
                    'https://www.facebook.com/profile.php?id=100021560538306');
              },
              icon: FaIcon(
                FontAwesomeIcons.facebook,
                color: AppColors.studio,
                size: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.studio.withOpacity(0.5))),
          child: Center(
            child: IconButton(
              hoverColor: AppColors.paleSlate,
              onPressed: () {
                launchUrlString(
                    'https://www.instagram.com/asi.f_._?igsh=MWo1ZTUzY3lqMnY2ag==');
              },
              icon: FaIcon(
                FontAwesomeIcons.instagram,
                color: AppColors.studio,
                size: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.studio.withOpacity(0.5))),
          child: Center(
            child: IconButton(
              hoverColor: AppColors.paleSlate,
              onPressed: () {
                launchUrlString('https://github.com/asifmajeed04');
              },
              icon: FaIcon(
                FontAwesomeIcons.github,
                color: AppColors.studio,
                size: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
