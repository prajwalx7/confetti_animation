import 'dart:math';

import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = ConfettiController();

  @override
  void initState() {
    super.initState();
    controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ConfettiWidget(
              confettiController: controller,
              shouldLoop: true,
              blastDirectionality: BlastDirectionality.explosive,
              blastDirection: pi / 2,
              emissionFrequency: 0.03,
              gravity: 0.2,
            ),
          ),
        ],
      ),
    );
  }
}
