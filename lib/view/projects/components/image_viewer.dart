import 'package:flutter_portfolio/model/project_model.dart';
import 'package:photo_view/photo_view.dart';
import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  final List<String> images;
  String description;
   ImageViewer(BuildContext context, {super.key ,required this.images, required this.description});

  @override
  Widget build(BuildContext context) {
   var size= MediaQuery.sizeOf(context);
    return Center(
          child: Hero(
            tag: 'IMAGEVIEW',
            child: SizedBox(
              height: size.height,
              width: size.width,
              child: Scaffold(
                backgroundColor: Colors.black,
                body: Container(
                    color: Colors.white,
                    child: Center(
                      child: PhotoView(imageProvider: AssetImage(images[0]))
                      ),
                    )),
              ),
            ),
        
        );
  }
}
// class ImageViewer {
//   ImageViewer(BuildContext context, final List<String> images,String description) {
//   // var size= MediaQuery.sizeOf(context);
//    Scaffold();
//     // showGeneralDialog(
//     //   barrierColor: Colors.black,
//     //   transitionDuration: Duration(milliseconds: 500),
//     //   barrierDismissible: true,
//     //   barrierLabel: 'Barrier',
//     //   context: context,
//     //   pageBuilder: (context, animation, secondaryAnimation) {
//     //     return 
      
//     //   },
//     // );
//   }
// }
