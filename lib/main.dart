import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: "assets/.env", mergeWith: {
    'TMDB_API_KEY': '',
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Movie App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Movies'),
          ),
          body: Text("")),
    );
  }
}
