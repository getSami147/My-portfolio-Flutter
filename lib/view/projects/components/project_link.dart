import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';

class ProjectLinks extends StatelessWidget {
  final int index;
  const ProjectLinks({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse(projectList[index].link));
      },
      child: Row(
        children: [
          Row(
            children: [
              const Text('Visit to Github',style: TextStyle(color: Colors.white),overflow: TextOverflow.ellipsis),
              IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/icons/github.svg')),
            ],
          ),
          const Spacer(),
          TextButton(
              onPressed: () {
                              launchUrl(Uri.parse(projectList[index].link));

              }, child: const Text('Read More>>',overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 10),))
        ],
      ),
    );
  }
}
