import 'package:flutter/material.dart';

class MainWidget extends StatelessWidget {
  const MainWidget(
      {Key? key,
      required this.dataMap})
      : super(key: key);

  final Map<String, dynamic> dataMap;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Opacity(
        opacity: 0.85,
        child: Image(width: 56, height: 56, image: AssetImage(dataMap['weather condition'])),
      ),
      const SizedBox(
        height: 30,
      ),
      Text(
        dataMap['temperature'],
        style: const TextStyle(fontSize: 64, color: Color(0xD9F0F0F0)),
      )
    ]);
  }
}
