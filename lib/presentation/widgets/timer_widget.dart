import 'package:flutter/material.dart';

import '../../utils/fonts.dart';


class TimerWidget extends StatelessWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/time.png',scale: 4,),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Aguarde 2 horas',
          style: CustomFontStyle.subtitleStyle2,
        ),
      ],
    );
  }
}