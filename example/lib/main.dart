import 'package:floating_bubbles/floating_bubbles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: true,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

// Simple example.
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: Colors.blue,
          ),
        ),
        // Positioned.fill(
        //   child: FloatingBubbles.alwaysRepeating(
        //     noOfBubbles: 10,
        //     colorOfBubbles: Colors.white,
        //     sizeFactor: 0.2,
        //     opacity: 70,
        //     paintingStyle: PaintingStyle.fill,
        //     shape: BubbleShape.circle, //This is the default
        //   ),
        // ),

        Positioned.fill(
          child: FloatingBubbles(
              noOfBubbles: 4,
              duration: 120,
              speed: 2000,
              verticalStart: .5,
              children: [
                BubbleChild(color: Colors.teal.shade200),
                BubbleChild(color: Colors.red),
                BubbleChild(color: Colors.green),
                BubbleChild(color: Colors.yellow),
              ]),
        ),
      ],
    );
  }
}

class BubbleChild extends StatelessWidget {
  final Color color;
  const BubbleChild({Key? key, this.color = Colors.teal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
