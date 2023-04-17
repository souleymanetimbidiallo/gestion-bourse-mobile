import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:gestion_bourse/views/app_drawer.dart';
import 'package:gestion_bourse/views/appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  List<dynamic> _niveaux = [];

  @override
  void initState() {
    super.initState();
    fetchNiveaux();
  }

  Future<void> fetchNiveaux() async {
    final response =
    await http.get(Uri.parse('http://10.192.64.120:3000/api/niveaux'));
    if (response.statusCode == 200) {
      setState(() {
        _niveaux = jsonDecode(response.body);
      });
    } else {
      throw Exception('Failed to fetch niveaux');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar("SNABE", context),
      drawer: myDrawer(context),
      body: _niveaux.isEmpty
          ? const Center(child: CircularProgressIndicator(),)
          : ListView.builder(
        itemCount: _niveaux.length,
        itemBuilder: (BuildContext context, int index) {
          final niveau = _niveaux[index];
          return ListTile(
            title: Text(niveau['nom']),
            subtitle: Text(niveau['description']),
          );
        },
      ),
    );
  }
}