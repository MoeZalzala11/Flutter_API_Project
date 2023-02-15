import 'package:api_project/fake_data/fake_data.dart';
import 'package:api_project/pages/Custom_widgets/day_navigator.dart';
import 'package:api_project/pages/Custom_widgets/extra_info_widget.dart';
import 'package:api_project/pages/Custom_widgets/hourly_forecast_widget.dart';
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
            const DayNavigator(),
            /*Padding(
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
            ),*/

            MainWidget(
              dataMap: data.weatherForCast['Sunday']![0],
            ),

            ExtraInfoWidget(
              dataMap: data.weatherForCast['Sunday']![0],
            ),

            const SizedBox(height: 65),

            Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: HourlyForecastWidget(
                    dataMap: data.weatherForCast['Sunday'],),
                )
            ),

            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
