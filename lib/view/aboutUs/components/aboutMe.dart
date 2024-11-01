
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class AboutMeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
           Text(
            "About Me",
            style: GoogleFonts.koHo(
              fontSize: 22,fontWeight: FontWeight.w600,
                  color: Colors.white,),
          ),
         const SizedBox(height: 10),
          Text(
            "Passionate and dedicated Flutter Developer with a solid understanding of mobile application development principles. Skilled in creating clean, reliable, and efficient code, with a focus on user experience and interface design. Seeking opportunities to leverage expertise in Flutter development to contribute to innovative projects and drive business growth.",
            style: GoogleFonts.koHo(
              fontSize: 18,
                  color: Colors.grey,),
          ),
        // Add more custom styling or widgets if needed
      ],
    ).paddingSymmetric(horizontal: 40);
  }
}