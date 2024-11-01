import 'package:flutter/material.dart';
import 'package:flutter_portfolio/model/experience_model.dart';
import 'package:flutter_portfolio/model/project_model.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/projects_controller.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/projects/components/projects_grid.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';


class ExperienceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var size=MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Experience",
            style: GoogleFonts.koHo(
              fontSize: 22,fontWeight: FontWeight.w600,
                  color: Colors.white,),
          ),
         const SizedBox(height: 10),
          Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "I'm Sami Ullah, a Flutter developer with 2 years and 6 months of experience. I specialize in building responsive, dynamic mobile applications, transforming complex ideas into intuitive, user-friendly interfaces. My expertise includes collaborating on projects that require seamless functionality and engaging user experiences",
              style: GoogleFonts.koHo(
                fontSize: 18,
                    color: Colors.grey,),
            ),
          ),
      SizedBox(height:Responsive.isMobile(context) ? 20 :Responsive.isTablet(context) ? 20:30,),
        
         Responsive(
      desktop: GradientContainer(
        crossAxisCount: 2,
        itemCount: experienceModel.length,
        ratio: 1.8,
      ),
      extraLargeScreen: GradientContainer(
        crossAxisCount: 2,
        itemCount: experienceModel.length,
        ratio: 1.8,
      ),
      largeMobile: GradientContainer(
        crossAxisCount: 1,
        itemCount: experienceModel.length,
        ratio: 1.95,
      ),
      mobile: GradientContainer(
        crossAxisCount: 1,
        itemCount: experienceModel.length,
        ratio: 1.98,
    
      ),
      tablet: GradientContainer(
        crossAxisCount: 2,
        itemCount: experienceModel.length,
        ratio: 1.8,
      ),
    )
    
        
        ],
      ),
    );
  }
}

class GradientContainer extends StatelessWidget {
   int crossAxisCount;
   int? itemCount;
   double ratio;

  GradientContainer({
    required this.itemCount,
    this.crossAxisCount = 2,
    this.ratio = 1.8,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;
    final double padding = 15.0; // Responsive padding
    final double margin = isMobile ? 10.0 : 16.0; // Responsive margin
    final double titleFontSize = isMobile ? 20.0 : 24.0; // Responsive font size

    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: padding),
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,crossAxisSpacing: 10,mainAxisSpacing: 10,
        childAspectRatio: ratio,
      ),
      itemBuilder: (context, index) => AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: EdgeInsets.all(margin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(colors: [
            Colors.pinkAccent,
            Colors.blue,
          ]),
          boxShadow: const [
            BoxShadow(
              color: Colors.pink,
              offset: Offset(-2, 0),
              blurRadius: 10,
            ),
            BoxShadow(
              color: Colors.blue,
              offset: Offset(2, 0),
              blurRadius: 10,
            ),
          ],
        ),
        child: AnimatedContainer(
          padding: EdgeInsets.only(left: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: bgColor,
          ),
          duration: const Duration(milliseconds: 500),
          child: Padding(
            padding: EdgeInsets.only(left: padding,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Responsive.isMobile(context) ? 20 :Responsive.isTablet(context)? 20:25),
                Text(
                  "2022 - Present",
                  style: GoogleFonts.koHo(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: Responsive.isMobile(context) ? 10 :Responsive.isTablet(context)? 10:15),
                Text(
                  "Flutter Developer",
                  style: GoogleFonts.koHo(
                    fontSize: titleFontSize,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: Responsive.isMobile(context) ? 40 :Responsive.isTablet(context)? 30:40),
                Text(
                  "Uzair Technology",
                  style: GoogleFonts.koHo(
                    fontSize: isMobile ? 14 : 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
