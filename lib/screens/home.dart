import 'package:flutter/material.dart';
import '../main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Best Anime',
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text('fdhggfjfhjfj'),
              Row(
                children: [
                  IconButton(
                    onPressed: () => MyApp.of(context).changeTheme(ThemeMode.light),
                    icon: const Icon(Icons.sunny),
                  ),
                  IconButton(
                    onPressed: () => MyApp.of(context).changeTheme(ThemeMode.dark),
                    icon: const Icon(Icons.cloud),
                  ),
                ],
              ),
              FloatingActionButton(onPressed: () {})
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'label1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'label2',
          )
        ],
      ),
    );
  }
}
