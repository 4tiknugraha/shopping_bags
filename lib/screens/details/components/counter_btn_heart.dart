import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'card_counter.dart';

class CounterBtnHeart extends StatelessWidget {
  const CounterBtnHeart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CardCunter(),
        Container(
          padding: const EdgeInsets.all(8),
          width: 32,
          height: 32,
          decoration: const BoxDecoration(
              color: Color(0xFFFF6464), shape: BoxShape.circle),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        ),
      ],
    );
  }
}
