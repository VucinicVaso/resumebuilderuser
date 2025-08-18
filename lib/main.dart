import 'package:flutter/material.dart';
import 'package:wtoolboxweb/external/lib_getx.dart';
import 'package:wtoolboxweb/wtoolboxweb_impl.dart';
import 'package:wtoolboxweb/application_starter/wtw_application_starter_service.dart';
import 'package:wtoolboxweb/router/wtw_router.dart';
import 'package:wtoolboxweb/theme/wtw_theme_service.dart';
import 'package:wtoolboxweb/translation/wtw_translation.dart';
import 'presentation/bindings/application_starter/rbu_application_starter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await wtoolboxweb.open(envFile: 'assets/.env');
  await initApplications();
  await initRoutes();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title:          'Resume Builder User',
      locale:         Get.find<WTWTranslation>().locale!,
      fallbackLocale: Get.find<WTWTranslation>().fallbackLocale!,
      translations:   Get.find<WTWTranslation>(),
      initialRoute:   Get.find<WTWRouter>().getInitialRoute(),
      getPages:       Get.find<WTWRouter>().getRoutes(),
      theme:          Get.find<WTWThemeService>().themeData,
      darkTheme:      Get.find<WTWThemeService>().themeData,
    )
  );
}

Future<void> initApplications() async {
  var applicationService = Get.find<WTWApplicationStarterService>();

  applicationService.registerInitialApplicationStarter(ResumeBuilderUserApplicationStarter());
}

Future<void> initRoutes() async {
  var router = Get.find<WTWRouter>();

  router
    ..setInitialRoute('/')
    ..setRedirectRoute('/')
    ..setLogoutRoute('/');
}