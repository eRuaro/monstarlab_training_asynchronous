import 'package:flutter/material.dart';
import 'package:monstarlab_training_asynchronous/networking/networking.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Asynch'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Networking network = Networking();
            var ans = network.getRecommendedSongs();
            print(ans);
          },
          child: Text(
            'Get Data',
          ),
        ),
      ),
    );
  }
}
