import 'package:flutter/material.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

import 'khalti_payment_page.dart';

void main() => runApp(const KhaltiPaymentApp());

class KhaltiPaymentApp extends StatelessWidget {
  const KhaltiPaymentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
        publicKey: "test_secret_key_95cbb974269c4476910b0aa05948d70e",
        builder: (context, navigatorKey) {
          return MaterialApp(
            navigatorKey: navigatorKey,
            supportedLocales: const [
              Locale('en', 'US'),
              Locale('ne', 'NP'),
            ],
            theme: ThemeData(
                primaryColor: const Color.fromARGB(255, 25, 14, 41),
                appBarTheme: const AppBarTheme(
                  color: Color(0xFF56328c),
                )),
            title: 'Khalti Payment',
            home: const KhaltiPaymentPage(),
          );
        });
  }
}
