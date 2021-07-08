import 'package:flutter/material.dart';
import 'package:monstarlab_training_asynchronous/app/services/api_service.dart';
import 'package:monstarlab_training_asynchronous/app/services/api.dart';

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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _responseStatus = '';

  void _getData() async {
    final apiService = APIService(api: API.sandbox());
    final response = await apiService.getData();

    setState(() {
      _responseStatus = response.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Asynch'),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          onPressed: (){
            _getData();
          },
          child: Text(
            _responseStatus,
          ),
        ),
      ),
    );
  }
}
