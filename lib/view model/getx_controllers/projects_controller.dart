import 'package:get/get.dart';

class ProjectController  extends GetxController{
  RxList<bool> hovers =[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ].obs;


  onHoverSlider(int index,bool value){
    hovers[index]=value;
  }
    var selectedIndex = 0.obs;

  void updateSliderIndex(int index) {
    selectedIndex.value = index;
  }

}