import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsAppButton extends StatelessWidget {
  final String message; // Mensaje que se enviará
  final String phoneNumber; // Número de WhatsApp
  final bool isValid; // Validación del campo de texto

  const WhatsAppButton({
    Key? key,
    required this.message,
    required this.phoneNumber,
    required this.isValid,
  }) : super(key: key);

  void _sendToWhatsApp(BuildContext context) async {
    if (!isValid) {
      _showErrorDialog(context);
      return;
    }
    final Uri url = Uri.parse('https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}');
    if (!await launchUrl(url)) {
      throw 'No se pudo abrir el enlace de WhatsApp.';
    }
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Campo vacío'),
          content: const Text('Por favor, ingrese el texto para solicitar un presupuesto.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _sendToWhatsApp(context),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green, // Color verde para representar WhatsApp
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      child: const Text(
        'Enviar por WhatsApp',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
