import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/model/project_model.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/projects_controller.dart';
import 'package:get/get.dart';

class ProjectDetail extends StatelessWidget {
  final int index;
  final ProjectController sliderController = Get.put(ProjectController()); // Initialize GetX controller

  ProjectDetail({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    bool isMobile = size.width < 600;
    bool isTablet = size.width >= 600 && size.width < 1200;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Carousel Slider
            SizedBox(
              height: isMobile ? size.height * 0.35 : isTablet ? size.height * 0.5 : size.height * 0.6,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: isMobile ? size.height * 0.35 : size.height * 0.5,
                  viewportFraction: 0.55,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  onPageChanged: (index, reason) {
                    sliderController.updateSliderIndex(index); // Update selected index in controller
                  },
                ),
                items: [
                  for (int i = 0; i < projectList[index].images.length; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            projectList[index].images[i],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            
            // Indicators for Carousel
            Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < projectList[index].images.length; i++) ...[
                  const SizedBox(width: 5),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300), // Smooth transition
                    height: 6,
                    width: sliderController.selectedIndex.value == i ? 24 : 6, // Dynamic width
                    decoration: BoxDecoration(
                      color: sliderController.selectedIndex.value == i ? Colors.cyanAccent : Colors.grey, // Active/inactive color
                      borderRadius: BorderRadius.circular(8),
                    ),
                  )
                ]
              ],
            )),
            
            // Project Title and Description
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    projectList[index].name,
                    style: TextStyle(
                      fontSize: isMobile ? 20 : 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      projectList[index].description,
                      style: TextStyle(
                        fontSize: isMobile ? 14 : 18,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                     const SizedBox(height: 25),
                  Text(
                    "Features",
                    style: TextStyle(
                      fontSize: isMobile ? 20 : 28,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      projectList[index].features,
                      style: TextStyle(
                        fontSize: isMobile ? 14 : 18,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Add button action if needed (e.g., link to project page)
                    },
                    child: Text('Learn More'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
