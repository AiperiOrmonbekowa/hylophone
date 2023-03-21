import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter hylophone',
            style: TextStyle(fontSize: 24, color: Colors.red),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Column(
          children: const [
            CastomCard(
              number: 1,
              color: Colors.red,
            ),
            CastomCard(
              number: 2,
              color: Colors.green,
            ),
            CastomCard(
              number: 3,
              color: Colors.yellow,
            ),
            CastomCard(
              number: 4,
              color: Colors.pink,
            ),
            CastomCard(
              number: 5,
              color: Colors.blue,
            ),
            CastomCard(
              number: 6,
              color: Colors.orange,
            ),
            CastomCard(
              number: 7,
              color: Colors.greenAccent,
            ),
            CastomCard(
              number: 1,
              color: Colors.redAccent,
            ),
          ],
        ));
  }
}

class CastomCard extends StatelessWidget {
  const CastomCard({
    Key? key,
    required this.number,
    required this.color,
  }) : super(key: key);

  final int number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          AudioPlayer().play(
            AssetSource('notes/nota$number.mp3'),
          );
        },
        child: Container(color: color),
      ),
    );
  }
}
