import 'package:flutter/material.dart';

class ExtraInfoWidget extends StatelessWidget {
  const ExtraInfoWidget(
      {Key? key,

        required this.dataMap})
      : super(key: key);



  final Map<String, dynamic> dataMap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 46, 16, 0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                const Opacity(
                  opacity: 0.80,
                  child: Image(
                      width: 34,
                      height: 34,
                      image: AssetImage('assets/images/humidity.png')),
                ),
                const SizedBox(
                  height: 7,
                ),
                const Text('Humidity',
                    style: TextStyle(color: Color(0xB3F0F0F0))),
                const SizedBox(
                  height: 7,
                ),
                Text(dataMap['humidity'],
                    style: const TextStyle(color: Color(0xCCF0F0F0))),
              ],
            ),
          ),

          Expanded(
            child: Column(
              children: [
                const Opacity(
                  opacity: 0.80,
                  child: Image(
                      width: 34,
                      height: 34,
                      image:
                      AssetImage('assets/images/wind_speed.png')),
                ),
                const SizedBox(
                  height: 7,
                ),
                const Text('Wind Speed',
                    style: TextStyle(color: Color(0xB3F0F0F0))),
                const SizedBox(
                  height: 7,
                ),
                Text(dataMap['wind speed'],
                    style: const TextStyle(color: Color(0xCCF0F0F0))),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Opacity(
                  opacity: 0.80,
                  child: Image(
                      width: 34,
                      height: 34,
                      image: AssetImage('assets/images/rain2.png')),
                ),
                const SizedBox(
                  height: 7,
                ),
                const Text('Chance to Rain',
                    style: TextStyle(color: Color(0xB3F0F0F0))),
                const SizedBox(
                  height: 7,
                ),
                Text(dataMap['chance to rain'],
                    style: const TextStyle(color: Color(0xCCF0F0F0))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
