import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 192,
      color: const Color(0xFFF5F5F5),
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 96,
                decoration: const BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 16,
                child: Text(
                  sight.type,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
              Positioned(
                right: 18,
                top: 19,
                child: Container(
                  height: 18,
                  width: 20,
                  color: Colors.pink,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sight.name,
                  style: const TextStyle(
                    color: Color(0xFF3B3E5B),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  'краткое описание',
                  style: TextStyle(
                    color: Color(0xFF7C7E92),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
