import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

class SightDetails extends StatelessWidget {
  final Sight sight;

  const SightDetails({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.indigo,
            height: 360,
          ),
          const SizedBox(height: 24),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sight.name,
                  style: const TextStyle(
                    color: Color(0xFF3B3E5B),
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Text(
                      sight.type,
                      style: const TextStyle(
                        color: Color(0xFF3B3E5B),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      'закрыто до 09:00',
                      style: TextStyle(
                        color: Color(0xFF7C7E92),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Text(
                  sight.details,
                  style: const TextStyle(
                    color: Color(0xFF3B3E5B),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Построить маршрут'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'Запланировать',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'В Избранное',
          ),
        ],
      ),
    );
  }
}
