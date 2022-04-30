import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:payflow/app.dart';
import 'package:payflow/modules/login/login_page.dart';
// import 'package:payflow/modules/splash/splash_page.dart';
import 'package:payflow/shared/themes/app_colors.dart';

void main() {
  runApp(const AppFirebase());
}

class AppFirebase extends StatefulWidget {
  const AppFirebase({Key? key}) : super(key: key);

  @override
  State<AppFirebase> createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: ((context, snapshot) {
          if (snapshot.hasError) {
            return const Material(
              child: Center(
                  child: Text(
                "Error",
                textDirection: TextDirection.ltr,
              )),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            return const MyApp();
          } else {
            return const Material(
              child: Center(
                child: Text(
                  "Carregando...",
                  textDirection: TextDirection.ltr,
                ),
              ),
            );
          }
        }));
  }
}
