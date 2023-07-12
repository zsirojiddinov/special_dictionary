import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../ui/widgets/custom_alert_dialog.dart';

openLink(BuildContext context, String link) async {
  if (await canLaunchUrl(Uri.parse(link))) {
    await launchUrl(Uri.parse(link), mode: LaunchMode.externalApplication);
  } else {
    showMessage(context, "Qaytadan urinib ko'ring!");
  }
}
