import 'package:flutter/material.dart';
import 'package:mqtt_flutter_demo/MQTTAppState.dart';
import 'package:mqtt_flutter_demo/home.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MQTT Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<MQTTAppState>(
        create: (_) => MQTTAppState(),
        child: Home(),
      ));
  }
}

