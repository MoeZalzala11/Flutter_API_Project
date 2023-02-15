import 'package:flutter/material.dart';

class DayNavigator extends StatefulWidget {
  const DayNavigator({Key? key}) : super(key: key);

  @override
  State<DayNavigator> createState() => _DayNavigatorState();
}

class _DayNavigatorState extends State<DayNavigator> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 30, 16, 34),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_new_rounded,
                    color: Color(0xCCF0F0F0))),
            const Text(
              'Today',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xCCF0F0F0),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xCCF0F0F0),
                )),
          ]),
    );
  }
}
