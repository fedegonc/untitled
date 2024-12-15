import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroDescription extends StatelessWidget {
  const IntroDescription({Key? key}) : super(key: key);

  void _openWhatsApp() async {
    const String phoneNumber = '+59892224955'; // Número de WhatsApp
    const String message = 'Hola, necesito más información sobre la calculadora de presupuestos.';
    final Uri url = Uri.parse('https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}');

    if (!await launchUrl(url)) {
      throw 'No se pudo abrir el enlace de WhatsApp.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Esta calculadora fue diseñada para ayudar a calcular el presupuesto de nuestros clientes. '
                'Si necesita más información para usarla, puede llamarnos o escribirnos.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              height: 1.5,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: _openWhatsApp,
            child: const Text(
              'Contáctenos por WhatsApp',
              style: TextStyle(
                fontSize: 16,
                color: Colors.greenAccent,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
