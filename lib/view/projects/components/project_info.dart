import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/projects/components/project_deatail.dart';
import 'package:flutter_portfolio/view/projects/components/project_link.dart';
import 'package:get/get.dart';
import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/getx_controllers/projects_controller.dart';
import 'image_viewer.dart';

class ProjectStack extends StatelessWidget {
  final controller = Get.put(ProjectController());
  ProjectStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.sizeOf(context);
    return InkWell(
      onHover: (value) {
        controller.onHoverSlider(index, value);
      },
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectDetail(index: index)));
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
          padding: const EdgeInsets.only(left: defaultPadding,right: defaultPadding,top: defaultPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: bgColor),
          duration: const Duration(milliseconds: 500),
          child:   Column(
      children: [
        Expanded(child: Image.asset(projectList[index].images[0].toString(),height: size.width>700 && size.width< 750 ?  size.height*.25:size.height*.1,fit:BoxFit.cover,width: double.infinity,)),
        Responsive.isMobile(context) ?  const SizedBox(height: defaultPadding/2,) : const SizedBox(height: defaultPadding,),
          Text(
            projectList[index].name,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ProjectLinks(index: index,),
        const SizedBox(height: defaultPadding/3,),
      ],
    ),
      ),
    );
  }
}