import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/core/package/screen_utile/screen_utile.dart';
import 'package:unit_converter/features/home/provider/provider.dart';
import 'package:unit_converter/features/home/ui/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    ScreenUtile(
      builder: (context) {
        return ChangeNotifierProvider(
          create: (context) => UnitProvider(),
          child: MyApp(),
        );
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
