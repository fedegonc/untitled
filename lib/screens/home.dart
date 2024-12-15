import 'package:flutter/material.dart';
import '../components/custom_slider1.dart';
import '../components/custom_slider2.dart';
import '../components/TextInputCounter.dart';
import '../components/ValueCalculator.dart';
import '../components/responsive_container.dart';
import '../components/custom_background.dart';

class HomeScreen extends StatelessWidget {
  final ValueNotifier<int> textLength = ValueNotifier<int>(0);
  final ValueNotifier<double> slider1Value = ValueNotifier<double>(100);
  final ValueNotifier<double> slider2Value = ValueNotifier<double>(30);

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de los Tallados v1.2.11'),
        backgroundColor: const Color(0xFFFF851B), // Naranja
      ),
      body: CustomBackground(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ResponsiveContainer(
                  child: TextInputCounter(
                    onTextChanged: (text) {
                      textLength.value = text.length;
                    },
                  ),
                ),
                const SizedBox(height: 40),
                ResponsiveContainer(
                  child: CustomSlider1(
                    onValueChanged: (value) {
                      slider1Value.value = value;
                    },
                  ),
                ),
                const SizedBox(height: 40),
                ResponsiveContainer(
                  child: CustomSlider2(
                    onValueChanged: (value) {
                      slider2Value.value = value;
                    },
                  ),
                ),
                const SizedBox(height: 40),
                ValueListenableBuilder(
                  valueListenable: textLength,
                  builder: (context, int textLen, _) {
                    return ValueListenableBuilder(
                      valueListenable: slider1Value,
                      builder: (context, double slider1, _) {
                        return ValueListenableBuilder(
                          valueListenable: slider2Value,
                          builder: (context, double slider2, _) {
                            return ValueCalculator(
                              slider1Value: slider1,
                              slider2Value: slider2,
                              textLength: textLen,
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
