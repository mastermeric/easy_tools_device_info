// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// Yeni Flutter da ; MaterialApp  drirek cagrilirsa Hot Reload calismiyor..


void main() => runApp(const MainApp());



class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("MERHABA.."),
            centerTitle: true,
            // ignore: prefer_const_constructors
            bottom: TabBar(
              tabs: const [
                Tab(text: "OK1", icon: Icon(Icons.home)),
                Tab(text: "OK2", icon: Icon(Icons.home)),
                Tab(text: "OK3", icon: Icon(Icons.home)),
              ],
            ),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          body: TabBarView(children: [
            Center(child: Text("İçerik ---1111")),
            Center(child: Text("İçerik ---2222")),
            Center(child: Text("İçerik ---3333")),
          ] ),
        ),
      ),
    );
  }
}
