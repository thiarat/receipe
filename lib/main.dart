import 'package:flutter/material.dart';
import 'package:receipe/Model/receipe.dart';

void main() {
  runApp(const receipeApp());
}

class receipeApp extends StatelessWidget {
  const receipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'receipeApp Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Receipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
        child: ListView.builder(
          itemCount: receipe.samples.length,
          itemBuilder: (context, index) {
            return buildRecipeCard(receipe.samples[index]);
          },
        ),
      ),
    );
  }
}

Widget buildRecipeCard(receipe recipe) {
  return Card(
    child: Column(
      children: <Widget>[
        Image(image: AssetImage(recipe.imageUrl)),
        Text(recipe.imgLable),
      ],
    ),
  );
}
