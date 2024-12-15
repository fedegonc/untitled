import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsAppButton extends StatelessWidget {
  final String message; // Mensaje que se enviará
  final String phoneNumber; // Número de WhatsApp

  const WhatsAppButton({
    Key? key,
    required this.message,
    required this.phoneNumber,
  }) : super(key: key);

  void _sendToWhatsApp() async {
    final Uri url = Uri.parse('https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}');
    if (!await launchUrl(url)) {
      throw 'No se pudo abrir el enlace de WhatsApp.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _sendToWhatsApp,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green, // Color verde para representar WhatsApp
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      child: const Text(
        'WhatsApp',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
