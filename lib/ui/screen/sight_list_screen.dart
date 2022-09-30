import 'package:flutter/material.dart';

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
        title: RichText(
          text: const TextSpan(
            text: 'С',
            style: TextStyle(
              color: Color(0xFF4CAF50),
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
            children: [
              TextSpan(
                text: 'писок \n',
                style: TextStyle(
                  color: Color(0xFF3B3E5B),
                ),
              ),
              TextSpan(
                text: 'и',
                style: TextStyle(
                  color: Color(0xFFFCDD3D),
                ),
              ),
              TextSpan(
                text: 'нтересных мест',
                style: TextStyle(
                  color: Color(0xFF3B3E5B),
                ),
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text('Hello!'),
      ),
    );
  }
}
