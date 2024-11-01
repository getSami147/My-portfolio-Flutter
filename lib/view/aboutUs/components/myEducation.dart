import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/aboutUs/components/experience.dart';
import 'package:flutter_portfolio/view/projects/components/projects_grid.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
             Text(
              "My Education",
              style: GoogleFonts.koHo(
                fontSize: 22,fontWeight: FontWeight.w600,
                    color: Colors.white,),
            ),
           const SizedBox(height: 10),
            Text(
              "A blend of creative flair and a strong tech foundation, bridging aesthetics and functionality.",
              style: GoogleFonts.koHo(
                fontSize: 18,
                    color: Colors.grey,),
            ),
      SizedBox(height:Responsive.isMobile(context) ? 20 : 40,),
     Responsive(
              desktop: GradientContainer(crossAxisCount: 2,itemCount: 1,),
              extraLargeScreen: GradientContainer(crossAxisCount: 2, itemCount: 1,),
              largeMobile: GradientContainer(crossAxisCount: 2,ratio: 1.8, itemCount: 1,),
              mobile: GradientContainer(crossAxisCount: 1,ratio: 1.5, itemCount: 1,),
              tablet: GradientContainer(ratio: 1.4,crossAxisCount: 2, itemCount: 1,))
    //   GradientContainer(
    //     itemCount:1 ,
    //     crossAxisCount:2 ,
    //     ratio: ,
    //    width: 320,
    //     child: Padding(
    //     padding: const EdgeInsets.only(left: 30,bottom: 20),
    //     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //            Text(
    //             "2022 - Present",
    //             style: GoogleFonts.koHo(
    //                 color: Colors.blue,
    //                 fontWeight: FontWeight.bold),
                
                    
    //             maxLines: 1,
    //             overflow: TextOverflow.ellipsis,
    //           ),
    //         Responsive.isMobile(context) ?  const SizedBox(height: 10,) : const SizedBox(height: 15,),
    //           Text(
    //             "Flutter Developer",
    //             style: GoogleFonts.koHo(
    //               fontSize: 24,
    //                 color: Colors.white,
    //                 fontWeight: FontWeight.w600),
    //             maxLines: 1,
    //             overflow: TextOverflow.ellipsis,
    //           ),
    //           Responsive.isMobile(context) ?  const SizedBox(height: 40,) : const SizedBox(height: 50,),
    //           Text(
    //             "Uzair Technology",
    //             style: GoogleFonts.koHo(
    //               fontSize: 16,fontWeight: FontWeight.bold,
    //                 color: Colors.white,),
    //             maxLines: 1,
    //             overflow: TextOverflow.ellipsis,
    //           ),
    //         const SizedBox(height: defaultPadding/3,),
            
    //       ],
    //     ),
    //   ),)     
     ],
      ),
    );
  }
}

// class _CustomGridView extends StatelessWidget {
//   const _CustomGridView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return    GridView.builder(
//         shrinkWrap: true,
//         padding: const EdgeInsets.symmetric(horizontal: 30),
//         itemCount: projectList.length,
//         gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: crossAxisCount, childAspectRatio: ratio),
//         itemBuilder: (context, index) {
//           return Obx(() => AnimatedContainer(
//               duration: const Duration(milliseconds: 200),
//               margin: const EdgeInsets.symmetric(
//                   vertical: defaultPadding, horizontal: defaultPadding),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   gradient: const LinearGradient(colors: [
//                     Colors.pinkAccent,
//                     Colors.blue,
//                   ]),
//                   boxShadow:  [
//                     BoxShadow(
//                       color: Colors.pink,
//                       offset: const Offset(-2, 0),
//                       blurRadius: 10,
//                     ),
//                     BoxShadow(
//                         color: Colors.blue,
//                         offset: const Offset(2, 0),
//                         blurRadius:  10,),
                        
//                   ]),
//               child: ProjectStack(index: index)
//           ));
//         },
//       );
//   }
// }