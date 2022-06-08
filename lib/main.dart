import 'package:assets_management_app/feature/AccountPage/view/acccount_view.dart';
import 'package:assets_management_app/feature/assetsPage/view/assets_view.dart';
import 'package:assets_management_app/feature/create_company_page/view/create_company_view.dart';
import 'package:assets_management_app/feature/homePage/view/home_page.dart';
import 'package:assets_management_app/feature/loginPage/view/login_view.dart';
import 'package:assets_management_app/feature/login_register_page/view/login_register_view.dart';
import 'package:assets_management_app/feature/registerPage/view/register_view.dart';
import 'package:assets_management_app/feature/splashPage/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {"/": (context) => RegisterPage()},
        onGenerateRoute: (settings) {
          List<String> filtered = settings.name!.split("/");
          switch (filtered[1]) {
            case "/homePome":
              return PageTransition(
                child: HomePage(),
                type: PageTransitionType.fade,
                settings: settings,
                reverseDuration: const Duration(seconds: 0),
              );
            case "duyuruPage":
              return PageTransition(
                child: AssetsPage(),
                type: PageTransitionType.fade,
                settings: settings,
                reverseDuration: const Duration(seconds: 0),
              );
            case "awardPage":
              return PageTransition(
                child: AccountPage(),
                type: PageTransitionType.fade,
                settings: settings,
                reverseDuration: const Duration(seconds: 0),
              );
          }
          return null;
        });
  }
}

/**
 *    initialRoute: '/',
        routes: {"/": (context) => const RegisterPage()},
        onGenerateRoute: (settings) {
          List<String> filtered = settings.name!.split("/");
          switch (filtered[1]) {
            case "/homePome":
              return PageTransition(
                child: const HomePage(),
                type: PageTransitionType.fade,
                settings: settings,
                reverseDuration: const Duration(seconds: 0),
              );
            case "duyuruPage":
              return PageTransition(
                child: const NoticePage(),
                type: PageTransitionType.fade,
                settings: settings,
                reverseDuration: const Duration(seconds: 0),
              );
            case "awardPage":
              return PageTransition(
                child: const AwardPage(),
                type: PageTransitionType.fade,
                settings: settings,
                reverseDuration: const Duration(seconds: 0),
              );

            case "profilPage":
              return PageTransition(
                child: const ProfilPage(),
                type: PageTransitionType.fade,
                settings: settings,
                reverseDuration: const Duration(seconds: 0),
              );
            case "gamePage":
              return PageTransition(
                child: const GamePage(),
                type: PageTransitionType.fade,
                settings: settings,
                reverseDuration: const Duration(seconds: 0),
              );
          }
          return null;
        });
 */