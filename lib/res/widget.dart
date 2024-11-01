import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:nb_utils/nb_utils.dart';

class GradientButton extends StatelessWidget {
  bool? loading;

  Widget? child;
  Gradient? gradientColors;
  Color? buttonbgColor;
  var borderRadius;
  var height, width;
  VoidCallback? onPressed;
  Color? disabledBackgroundColor;
  

  GradientButton(
      {required this.child,
      this.loading,
      this.disabledBackgroundColor,
      this.width = double.infinity,
      required this.onPressed,
      this.height = 50.0,
      this.buttonbgColor = Colors.transparent,
      this.borderRadius = 10.0,
      this.gradientColors =
           const LinearGradient(colors: [Colors.pink,Colors.blue,],),
      super.key});  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: AnimatedContainer(
      duration: const Duration(milliseconds: 200),
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              gradient:gradientColors,
            boxShadow: const [
                    BoxShadow(
                      color: Colors.pink,
                      offset:  Offset(-2, 0),
                      blurRadius: 10,
                    ),
                    BoxShadow(
                        color: Colors.blue,
                        offset:  Offset(2, 0),
                        blurRadius: 10,),
                        
                  ]
          ),
        child:AnimatedContainer(
        alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: bgColor),
          duration: const Duration(milliseconds: 500),
          child: loading == true
                ? const Center(
                    child: CircularProgressIndicator(
                      color: white,
                      strokeWidth: 2,
                    ),
                  )
                : child,
        ),
        
      ),
    );
  }
}
