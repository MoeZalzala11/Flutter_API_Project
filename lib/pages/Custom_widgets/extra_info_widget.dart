import 'package:flutter/material.dart';

class ExtraInfoWidget extends StatelessWidget {
  const ExtraInfoWidget(
      {Key? key,
        required this.humidityPercentage,
        required this.windSpeed,
        required this.chanceToRain})
      : super(key: key);

  final String humidityPercentage;
  final String windSpeed;
  final String chanceToRain;

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
                Text(humidityPercentage,
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
                Text(windSpeed,
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
                Text(chanceToRain,
                    style: const TextStyle(color: Color(0xCCF0F0F0))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
