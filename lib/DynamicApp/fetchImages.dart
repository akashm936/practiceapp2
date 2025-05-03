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
  List arrColors = [
    Colors.purple,
    Colors.blue,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.red,
    Colors.yellowAccent,
    Colors.grey,
    Colors.indigo,
    Colors.tealAccent,
    Colors.pinkAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Image Gallary",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 600,
              child: GridView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      images[index]['src']['tiny'],
                      fit: BoxFit.cover,
                    ),
                  );
                },
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
              ),
            ),
            ElevatedButton(onPressed: fetchImages, child: Text("Get Images")),
          ],
        ),
      ),
    );
  }

  void fetchImages() async {
    print("Images Fetch Started");
    await http
        .get(
          Uri.parse('https://api.pexels.com/v1/curated?per_page=20'),
          headers: {
            'Authorization':
                "my api key",
          },
        )
        .then((value) {
          Map results = jsonDecode(value.body);

          setState(() {
            images = results['photos'];
          });
        });
    // print(images[0]);

    print("Api fetch is Completed");
  }
}
