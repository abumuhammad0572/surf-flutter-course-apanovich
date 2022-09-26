import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}



class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: MyFirstWidget(),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  MyFirstWidget({Key? key}) : super(key: key);

  @override
  int counter = 0;
  Widget build(BuildContext context) {
    counter++;
    print(counter); //метод билд вызвался один раз
    return Container(
      child: const Center(
        child: Text('Hello!'),
      ),
    );
  }
  Type getContextRuntimeType() => context.runtimeType;
}

class MySecondWidget extends StatefulWidget {
  const MySecondWidget({Key? key}) : super(key: key);

  @override
  State<MySecondWidget> createState() => _MySecondWidgetState();
}
int counter = 0;
class _MySecondWidgetState extends State<MySecondWidget> {
  @override
  Widget build(BuildContext context) {
    counter++;
    print(counter); //метод билд вызвался два раза
    return Container(
      child: const Center(
        child: Text('Hello!'),
      ),
    );
  }
  Type getContextRuntimeType() => context.runtimeType;
}