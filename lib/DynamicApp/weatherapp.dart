import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWeatherApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MyWeatherAppState();
}

class _MyWeatherAppState extends State<MyWeatherApp>{

  final TextEditingController _SearchController = TextEditingController();
  String cityName = "Jalna";

  @override
  void initState() {
    super.initState();
    _SearchController.addListener((){
      setState(() {
        cityName = _SearchController.text.toString().isEmpty ? "Mumbai" : _SearchController.text.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _SearchController,
                  decoration:InputDecoration(
                  hintText: 'Enter City Name',
                  border: OutlineInputBorder(),
                ),
                ),
              ),
              SizedBox(height: 18,),
              Text(
                "$cityName"
              )
            ],
          ),
        ),
      ),
    );
  }

}