import 'package:flutter/material.dart';

class HourlyForecastWidget extends StatelessWidget {
  const HourlyForecastWidget(
      {Key? key,
      required this.dataMap
      })
      : super(key: key);

  final List<Map<String, dynamic>>? dataMap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: dataMap?.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: const Color(0xD9F0F0F0)),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(26, 19, 26, 19),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        dataMap![index]['hour'],
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
                                dataMap![index]['weather condition'])
                            )
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Text(
                        dataMap![index]['temperature'],
                        style:
                            const TextStyle(fontSize: 28, color: Color(0xD9F0F0F0)),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
    ));
  }
}
