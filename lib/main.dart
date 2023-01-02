import 'package:flutter/material.dart';
import 'package:kommunicate_flutter/kommunicate_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat Demo'), centerTitle: true),
      body: const Center(child: Text('Press Floating action button')),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            try {
              dynamic conversationObject = {
                'appId': '75451fb31311eabf4deb132de0f21cf5'
              };
              dynamic result = await KommunicateFlutterPlugin.buildConversation(
                  conversationObject);
              print("Conversation builder success : " + result.toString());
            } on Exception catch (e) {
              print("error");
            }
          },
          child: const Icon(Icons.add)),
    );
  }
}
