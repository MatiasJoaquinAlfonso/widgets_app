import 'package:flutter/material.dart';

class CardsScren extends StatelessWidget {
  
  static const String name = 'cards_screen';

  const CardsScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards Screen')),
      body: const Placeholder(),
    );
  }
}
