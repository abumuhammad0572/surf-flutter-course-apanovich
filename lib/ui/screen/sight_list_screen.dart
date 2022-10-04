import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        toolbarHeight: 80,
        title: const Text(
          'Список \nинтересных мест',
          maxLines: 2,
          style: TextStyle(
            color: Color(0xFF252849),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 36,
          ),
          textAlign: TextAlign.start,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SightCard(sight: mocks[0]),
            SightCard(sight: mocks[1]),
            SightCard(sight: mocks[2]),
          ],
        ),
      ),
    );
  }
}
