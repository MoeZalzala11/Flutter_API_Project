import 'package:api_project/fake_data/fake_data.dart';
import 'package:api_project/pages/Custom_widgets/extra_info_widget.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;
import '../Custom_widgets/main_widget.dart';

class Forecast extends StatefulWidget {
  const Forecast({Key? key}) : super(key: key);

  @override
  State<Forecast> createState() => _ForecastState();
}

class _ForecastState extends State<Forecast> {
  FakeData data = FakeData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Greetings Moe',
                    style: TextStyle(fontSize: 16, color: Color(0xCCF0F0F0)),
                  ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        //backgroundColor: Colors.redAccent,
                        side: const BorderSide(
                            width: 1, color: Color(0x99F0F0F0)),
                        padding: const EdgeInsets.fromLTRB(8, 12, 8, 12)),
                    label:
                        const Icon(Icons.location_on, color: Color(0xCCF0F0F0)),
                    icon: const Text(
                      'Baghdad',
                      style: TextStyle(fontSize: 16, color: Color(0xCCF0F0F0)),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Padding(
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
            ),
            MainWidget(
              weatherIcon: data.weatherForCast['Sunday']![0]
                  ['weather condition'],
              temperature: data.weatherForCast['Sunday']![0]['temperature'],
            ),
            ExtraInfoWidget(
              humidityPercentage: data.weatherForCast['Sunday']![0]['humidity'],
              windSpeed: data.weatherForCast['Sunday']![0]['wind speed'],
              chanceToRain: data.weatherForCast['Sunday']![0]['chance to rain'],
            ),
            const SizedBox(height: 65),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.weatherForCast['Sunday']!.length,
                    //data.listOfWeather.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2, color: const Color(0xD9F0F0F0)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(26, 19, 26, 19),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                data.weatherForCast['Sunday']![index]['hour'],
                                //data.listOfWeather[index]['hour'],
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Color(0xD9F0F0F0),
                                ),
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              Opacity(
                                opacity: 0.85,
                                child: Image(
                                    height: 34,
                                    width: 34,
                                    image: AssetImage(
                                      data.weatherForCast['Sunday']![index]
                                          ['weather condition'],
                                    )),
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              Text(
                                data.weatherForCast['Sunday']![index]
                                    ['temperature'],
                                style: const TextStyle(
                                    fontSize: 28, color: Color(0xD9F0F0F0)),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
