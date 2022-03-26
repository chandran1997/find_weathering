import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class lottiAnimation extends StatefulWidget {
  const lottiAnimation({Key? key}) : super(key: key);

  @override
  State<lottiAnimation> createState() => _lottiAnimationState();
}

class _lottiAnimationState extends State<lottiAnimation> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: Lottie.network(
              // 'https://assets9.lottiefiles.com/packages/lf20_x7fydhul.json',
              'https://assets9.lottiefiles.com/packages/lf20_dvleqvjo.json'),
        ),
        const Spacer(),
        SizedBox(
          width: 150,
          child: Lottie.network(
              'https://assets9.lottiefiles.com/packages/lf20_qjq70sp1.json'),
        )
      ],
    );
  }
}
