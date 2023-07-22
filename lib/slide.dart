import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Slides extends StatefulWidget {
  const Slides({super.key});

  @override
  State<Slides> createState() => _SlidesState();
}

class _SlidesState extends State<Slides> {
  final controller = LiquidController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(liquidController: controller,
            enableSideReveal: true,
            onPageChangeCallback: (index){
            setState(() {

            });
            },
            slideIconWidget: Icon(Icons.arrow_back_ios,
              color: Colors.white,),
            pages: [
              Container(
                color: Colors.tealAccent,
                child: Center(child: Text("page 1"),),
              ),
              Container(
                color: Colors.blue,
                child: Center(child: Text("page 2"),),
              ),
              Container(
                color: Colors.red,
                child: Center(child: Text("page 3"),),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 34,
            right: 32,
            child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: (){
                    controller.jumpToPage(page: 3);
                  },
                  child: Text("skip"),
                ),
                TextButton(onPressed: (){
                  final page = controller.currentPage + 1;
                  controller.animateToPage(page: page>4 ? 0 : page,duration: 400,);
                }, child: Text("Next")),
                AnimatedSmoothIndicator(activeIndex: controller.currentPage, count: 4,
                effect:  WormEffect(
                  spacing: 16,
                  dotColor: Colors.cyan
                ),
                  onDotClicked: (index){
                  controller.animateToPage(page: index);
                  },
                )
              ],
            )

          )
        ]
      ),
      );
  }
}
