import 'package:flutter/material.dart';

class CountrySelector extends StatefulWidget {
  const CountrySelector({Key? key}) : super(key: key);

  @override
  State<CountrySelector> createState() => _CountrySelectorState();
}

class _CountrySelectorState extends State<CountrySelector> {
  @override
  Widget build(BuildContext context) {
    final isKeyBoardOpen = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Set up your account',
        ),
      ),
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              if (!isKeyBoardOpen)
                const Image(
                    width: 136,
                    height: 136,
                    image: AssetImage(
                      'images/weather.png',
                    )),
              Container(
                margin: const EdgeInsets.fromLTRB(69, 70, 69, 7),
                child: const TextField(
                  decoration: InputDecoration(
                      labelText: 'Enter Your Name',
                      labelStyle: TextStyle(color: Color(0xFFF0F0F0)),
                      prefixIcon: Icon(Icons.person_outline,
                          color: Color(0xFFF0F0F0), size: 32)),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(69, 7, 69, 0),
                child: const TextField(
                  decoration: InputDecoration(
                      labelText: 'Enter Your Location',
                      labelStyle: TextStyle(color: Color(0xFFF0F0F0)),
                      prefixIcon: Icon(Icons.location_on_outlined,
                          color: Color(0xFFF0F0F0), size: 32)),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(70),
                child: ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xffF0F0F0),
                      padding: const EdgeInsets.fromLTRB(46, 8, 46, 8)),
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
