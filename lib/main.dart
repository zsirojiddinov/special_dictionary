import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:special_dictionary/l10n/l10n.dart';
import 'package:special_dictionary/services/preference_service.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:special_dictionary/ui/bottom_bar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var service = PreferenceService();
    var locale = service.getLang();
    Get.updateLocale(locale);

    return GetMaterialApp(
      title: 'Flutter Demo',
      supportedLocales: L10n.all,
      locale: Get.locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.grey,
       // primarySwatch: Colors.blue,
      ),
      home:  BottomBar(),
    );
  }
}
