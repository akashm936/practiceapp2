import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FetchImagesApi extends StatefulWidget {
  @override
  State<FetchImagesApi> createState() => _FetchImagesApiState();
}

class _FetchImagesApiState extends State<FetchImagesApi> {
  List images = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fetch Images"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 400,
              child: ListView.builder(itemBuilder: (context,index){

                return Image.network(images as String);
              },
              itemCount: images.length,),
            ),
            ElevatedButton(onPressed: fetchImages, child: Text("Get Images")),
          ],
        ),
      ),
    );
  }

  void fetchImages() async{
    print("Images Fetch Started");
    await http.get(
      Uri.parse('https://api.pexels.com/v1/curated?per_page=2'),
      headers: {
        'Authorization':
            'hVCjeGmM1fh0fiveeOYSr1lgjWqHNccLPhOUvstjKehwJUzLjALyD5tk',
      },
    ).then((value){
      Map results = jsonDecode(value.body);
      images = results['photos'];


    });
    print("Api fetch is Completed");
  }
}
