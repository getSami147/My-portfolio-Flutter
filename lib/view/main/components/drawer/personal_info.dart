import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding/2,),
        AreaInfoText(title: 'Contact', text: '0330 3210550'),
        AreaInfoText(title: 'Email', text: 'samiu09950@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: "Sami Ullah"),//'https://www.linkedin.com/in/sami-ullah-dev147'
        AreaInfoText(title: 'Github', text: 'getSami147'),//https://github.com/getSami147
        SizedBox(
          height: defaultPadding,
        ),
        Text('Skills',style: TextStyle(color: Colors.white),),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
