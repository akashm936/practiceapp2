import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;

class Imagegallary extends StatefulWidget {
  const Imagegallary({super.key});

  @override
  State<Imagegallary> createState() => _ImagegallaryState();
}

class _ImagegallaryState extends State<Imagegallary> {
  List<dynamic> UsersImage = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Gallary')),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: ListView.builder(
              itemBuilder: (context, index) {
                ScrollDirection:
                Axis.vertical;
                final user = UsersImage[index];
                final name = user['name']['first'];
                return Text(name);
              },
              shrinkWrap: true,
              itemCount: UsersImage.length,
            ),
          ),
          ElevatedButton(onPressed: fetchImages, child: Text("Fetch Images")),
        ],
      ),
    );
  }

  void fetchImages() async {
    print("Fetch Images Is Started");
    final Url =
        "https://api.freeapi.app/api/v1/public/randomusers?page=1&limit=10";
    final uri = Uri.parse(Url);
    final responce = await http.get(uri);
    final body = responce.body;
    final json = jsonDecode(body);

    setState(() {
      UsersImage = json["data"]['data'];
    });
    print("Fetch Image is Completed");
  }
}
