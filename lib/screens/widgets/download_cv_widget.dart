import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myself/constants/colors.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DownloadCVButton extends StatelessWidget {
  const DownloadCVButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.paleSlate)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Download CV",
            style: TextStyle(color: AppColors.paleSlate),
          ),
          const SizedBox.square(
            dimension: 12,
          ),
          IconButton(
              onPressed: () {
                launchUrlString(
                    'https://drive.google.com/file/d/1vW8bzNJX09aC79zAM_ntcGDbrWJQ8nxM/view?usp=sharing');
              },
              icon: FaIcon(
                FontAwesomeIcons.download,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
