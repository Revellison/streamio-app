import 'package:flutter/material.dart';
import 'components/album_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Streamly',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> albums = [
      'I AM MUSIC',
      'MORE CHAOS',
      'UTOPIA',
      'HEROES & VILLAINS',
      'THE LIFE OF PABLO',
      'DONDA'
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 колонки, каждая по 50%
            crossAxisSpacing: 16, // Горизонтальный отступ
            mainAxisSpacing: 16, // Вертикальный отступ
            childAspectRatio: 0.7, // Соотношение сторон элемента

          ),
          itemCount: albums.length,
          itemBuilder: (context, index) {
            return AlbumItem(title: albums[index]);
          },
        ),
      ),
    );
  }
}
