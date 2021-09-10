import 'dart:math';

import 'package:flutter/material.dart';
import 'bubble_floating_animation.dart';

abstract class CustomStatefulBubble extends StatefulWidget {
  late BubbleFloatingAnimation? animation;
  final Random random;
  final void Function()? onCreated;

  CustomStatefulBubble(
      {Key? key, this.animation, required this.random, this.onCreated})
      : super(key: key) {
    if (animation == null)
      animation = BubbleFloatingAnimation(random, sound: true, speed: 15000);
  }
}
