import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';
import 'dart:js' as js;


void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Feed',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(33, 23, 83, 1),
        ),
      ),
      home: const MyHomePage(title: 'News Feed'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    CollectionReference articles = FirebaseFirestore.instance.collection('articles');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(33, 23, 83, 1),
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
      ),
      body: FutureBuilder<QuerySnapshot>(
        future: articles.get(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Error retrieving events: ${snapshot.error.toString()}',
            style: const TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        );
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading Content...");
          }

          return ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: snapshot.data?.size ?? 5,
            itemBuilder: (context, index) {
              Map<String, dynamic> data = snapshot.data!.docs[index].data()! as Map<String, dynamic>;
              return ListTile(
                leading: Image.network(data['thumbnail_url']),
                title: Text(data['title']),
                onTap: () {
                  js.context.callMethod('open', [data['url']]);
                },
                contentPadding: const EdgeInsets.all(10),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            )
          );
        }
      )
    );
  }
}
