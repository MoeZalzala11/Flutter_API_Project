import 'package:flutter/material.dart';

class DayNavigator extends StatelessWidget {
  const DayNavigator(
      {Key? key,
      required this.navigateForward,
      required this.day,
      required this.navigateBackward})
      : super(key: key);

  final Function navigateForward;
  final Function navigateBackward;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 30, 16, 34),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
            onPressed: () => navigateBackward(),
            icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Color(0xCCF0F0F0))),
        Text(
          day,
          style: const TextStyle(
            fontSize: 24,
            color: Color(0xCCF0F0F0),
          ),
        ),
        IconButton(
            onPressed: () {
              navigateForward();
            },
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color(0xCCF0F0F0),
            )),
      ]),
    );
  }
}
