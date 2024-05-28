import 'package:cosme_app/tile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

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
    final date = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("コスメ一覧"),
      ),
      body: ListView(
        children: [
          const ListTile(
            leading: Icon(Icons.favorite),
            title: Text("お気に入り"),
          ),
          CosmeItem(
            url: "https://www.addiction-beauty.com/img/goods/L/MAMM001.jpg",
            title: "アディクション ザ アイシャドウ パレット",
            maker: "ADDICTION",
            subTitle: "パレット・11色・ADDICTION",
            lastUsed: date,
            bestBy: date,
          ),
          CosmeItem(
            url:
                "https://stefany.co.jp/img/goods/D1/W1000618_3f9a95814a7d459386be8b1285ab7a05.jpg",
            title: "ODELIA（オディリア）ルミナスフィットクッションファンデーション 01 ナチュラルベージュ リフィル",
            maker: "ODELIA",
            subTitle: "パレット・11色・ADDICTION",
            lastUsed: date,
            bestBy: date,
          ),
          const ListTile(
            leading: Icon(Icons.list_rounded),
            title: Text("全て"),
          ),
          CosmeItem(
            url:
                "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRAKUG2gqPCix7oq0JW4b-fGYdhgRIXgGk7OhNg_tzxoQFRTm4xFEM32l6HeBjlb6Cwxyk2V7BBxnWiP_Obh-p20qn7R6LZQ3o2QFZBrPuY9qZt8srK6FAC0Z3s&usqp=CAE",
            title: "ミス ディオール オードゥ トワレ",
            maker: "Dior",
            subTitle: "ローズが明るく軽やかに香るグリーン フローラル",
            lastUsed: date,
            bestBy: date,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
