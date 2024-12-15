import 'package:flutter/material.dart';
import '../components/appbar.dart';
import '../components/footer.dart';
import '../components/custom_slider1.dart';
import '../components/custom_slider2.dart';
import '../components/TextInputCounter.dart';
import '../components/ValueCalculator.dart';
import '../components/responsive_container.dart';
import '../components/custom_background.dart';
import '../components/whatsapp_button.dart';
import '../components/intro_description.dart'; // Importa el nuevo componente

class HomeScreen extends StatelessWidget {
  final ValueNotifier<int> textLength = ValueNotifier<int>(0);
  final ValueNotifier<double> slider1Value = ValueNotifier<double>(100);
  final ValueNotifier<double> slider2Value = ValueNotifier<double>(30);

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Tallado Maestro'),
      body: CustomBackground(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const IntroDescription(), // Nuevo componente agregado
                const SizedBox(height: 20),

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
                            return Column(
                              children: [
                                ValueCalculator(
                                  slider1Value: slider1,
                                  slider2Value: slider2,
                                  textLength: textLen,
                                ),
                                const SizedBox(height: 20),
                                WhatsAppButton(
                                  phoneNumber: '+59892224955',
                                  message: 'Hola, me gustaría solicitar un presupuesto:\n'
                                      '- Largo: ${slider1.toInt()} cm\n'
                                      '- Alto: ${slider2.toInt()} cm\n'
                                      '- Texto: $textLen caracteres\n\n'
                                      'Por favor, envíame el precio y más detalles. ¡Gracias!',
                                  isValid: textLen > 0,
                                ),
                              ],
                            );
                          },
                        );
                      },
                    );
                  },
                ),
                const SizedBox(height: 40),

                // Footer
                const Footer(),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
