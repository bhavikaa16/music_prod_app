import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:music/view/home_screen.dart';
import 'package:music/view_model/service_view_model.dart';
import 'package:music/widgets/service_loc.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=>getIt<ServiceViewModel>()),
        ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Services App',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
    );
  }
}

