import 'package:flutter/material.dart';
import '../components/appbar.dart';
import '../components/custom_slider1.dart';
import '../components/custom_slider2.dart';
import '../components/TextInputCounter.dart';
import '../components/ValueCalculator.dart';
import '../components/responsive_container.dart';
import '../components/custom_background.dart';
import '../components/whatsapp_button.dart'; // Importa el botón de WhatsApp

class HomeScreen extends StatelessWidget {
  final ValueNotifier<int> textLength = ValueNotifier<int>(0);
  final ValueNotifier<double> slider1Value = ValueNotifier<double>(100);
  final ValueNotifier<double> slider2Value = ValueNotifier<double>(30);

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Tallado Maestro'),
      body: CustomBackground( // Se usa CustomBackground con fondo negro
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Campo de texto
                ResponsiveContainer(
                  child: TextInputCounter(
                    onTextChanged: (text) {
                      textLength.value = text.length;
                    },
                  ),
                ),
                const SizedBox(height: 40),

                // Primer slider
                ResponsiveContainer(
                  child: CustomSlider1(
                    onValueChanged: (value) {
                      slider1Value.value = value;
                    },
                  ),
                ),
                const SizedBox(height: 40),

                // Segundo slider
                ResponsiveContainer(
                  child: CustomSlider2(
                    onValueChanged: (value) {
                      slider2Value.value = value;
                    },
                  ),
                ),
                const SizedBox(height: 40),

                // Calculadora de valores reactiva
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

                                // Botón de WhatsApp
                                WhatsAppButton(
                                  phoneNumber: '+59892224955', // Reemplaza con tu número
                                  message: 'Hola, me gustaría solicitar un presupuesto:\n'
                                      '- Largo: ${slider1.toInt()} cm\n'
                                      '- Alto: ${slider2.toInt()} cm\n'
                                      '- Texto: $textLen caracteres\n\n'
                                      'Por favor, envíame el precio y más detalles. ¡Gracias!',
                                ),
                              ],
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
