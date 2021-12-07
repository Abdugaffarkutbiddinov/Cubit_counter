import 'package:bloc_architecture_app/presentation/screens/counter_screen/widgets/animated_circles.dart';
import 'package:bloc_architecture_app/presentation/screens/counter_screen/widgets/counter_slider.dart';
import 'package:bloc_architecture_app/presentation/screens/counter_screen/widgets/counter_value.dart';
import 'package:bloc_architecture_app/presentation/screens/counter_screen/widgets/plasma_background.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        PlasmaBackground(),
        Positioned(
          top: 48,
          child: Stack(alignment: Alignment.center, children: [
            AnimatedCircles(),
            CounterValue()
          ]),
        ),
        Positioned(
          child: CounterSlider(),
          bottom: 48,
        ),
      ]),
    );
  }
}


