import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/widget.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/projects_controller.dart';
import 'package:flutter_portfolio/view/aboutUs/components/aboutMe.dart';
import 'package:flutter_portfolio/view/aboutUs/components/contact.dart';
import 'package:flutter_portfolio/view/aboutUs/components/experience.dart';
import 'package:flutter_portfolio/view/aboutUs/components/myEducation.dart';
import 'package:flutter_portfolio/view/aboutUs/components/mySkills.dart';
import 'package:get/get.dart';

class AboutMainView extends StatelessWidget {
  final controller = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final bool isMobile = width < 600;
    final bool isTablet = width >= 600 && width < 1024;
    final double sidePadding = isMobile ? 16.0 : (isTablet ? 32.0 : 40.0);

    return Scaffold(
      backgroundColor: Colors.black,
      body: isMobile
          ? SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Mobile: Navigation Tabs in a vertical column at the top
                  NavigationTabsColumn(controller: controller),
                  Obx(
                    () => Padding(
                      padding: EdgeInsets.all(16.0),
                      child: controller.selectedWidget.value,
                    ),
                  ),
                ],
              ),
          )
          : Row(
              children: [
                // Sidebar for larger screens
                Expanded(
                  flex: isTablet ? 1 : 1,
                  child: NavigationDrawer(controller: controller),
                ),
                Expanded(
                  flex: 3,
                  child: Obx(
                    () => Padding(
                      padding: EdgeInsets.all(16.0),
                      child: controller.selectedWidget.value,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

class NavigationTabsColumn extends StatelessWidget {
  final ProjectController controller;

  const NavigationTabsColumn({required this.controller});

  @override
  Widget build(BuildContext context) {
     final double width = MediaQuery.of(context).size.width;
    final bool isMobile = width < 600;
    final bool isTablet = width >= 600 && width < 1024;
    final double sidePadding = isMobile ? 16.0 : (isTablet ? 32.0 : 40.0);

    final double fontSize = 14.0;
    return SingleChildScrollView(
      child: Padding(
      padding:  EdgeInsets.symmetric(horizontal: sidePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildNavItem("Experience", ExperienceWidget(), fontSize),
            _buildNavItem("My Education", EducationWidget(), fontSize),
            _buildNavItem("My Skills", SkillsWidget(), fontSize),
            _buildNavItem("About Me", AboutMeWidget(), fontSize),
            _buildNavItem("Contact", ContactWidget(), fontSize),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String title, Widget contentWidget, double fontSize) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () => controller.updateContent(title, contentWidget),
        child: Obx(
          () {
            bool isActive = controller.selectedTitle.value == title;
            return Center(
              child: GradientButton(
                  // height: ,
                  width:300 ,
                    onPressed: () {
                      controller.updateContent(title, contentWidget);
                    },
                    child:  Text(
                  title,
                  style: TextStyle(
                  color: isActive ? Colors.orange : Colors.white,
                  fontSize: fontSize,
                  fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                ),
                  
                ),
                  ),
            );
            
            
          },
        ),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  final ProjectController controller;
  const NavigationDrawer({required this.controller});

  @override
  Widget build(BuildContext context) {
     final double width = MediaQuery.of(context).size.width;
    final bool isMobile = width < 600;
    final bool isTablet = width >= 600 && width < 1024;
    final double sidePadding = isMobile ? 16.0 : (isTablet ? 32.0 : 40.0);
    final double fontSize = 18.0;
    return SingleChildScrollView(
      child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: sidePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildNavItem("Experience", ExperienceWidget(), fontSize),
            _buildNavItem("My Education", EducationWidget(), fontSize),
            _buildNavItem("My Skills", SkillsWidget(), fontSize),
            _buildNavItem("About Me", AboutMeWidget(), fontSize),
            _buildNavItem("Contact", ContactWidget(), fontSize),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String title, Widget contentWidget, double fontSize) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () => controller.updateContent(title, contentWidget),
        child: Obx(
          () {
            bool isActive = controller.selectedTitle.value == title;
            return GradientButton(
                // height: ,
                width:500 ,
                  onPressed: () {
                    controller.updateContent(title, contentWidget);
                  },
                  child:  Text(
                title,
                style: TextStyle(
                  color: isActive ? Colors.orange : Colors.white, // Change color if active
                  fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                ),
                
              ),
                );
          },
        ),
      ),
    );
  }
}


