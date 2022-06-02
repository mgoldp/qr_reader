import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qr_reader/models/scan_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void launchUrlUtil(BuildContext context, ScanModel scan) async {
  final url = Uri.parse(scan.valor);

  if (scan.tipo == 'http') {
    // Abrir sitio web
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  } else {
    Navigator.pushNamed(context, 'mapa', arguments: scan);
  }
}
