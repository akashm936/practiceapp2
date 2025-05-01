import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;


class FetchApiCall1 extends StatefulWidget {
  const FetchApiCall1({super.key});

  @override
  State<FetchApiCall1> createState() => _FetchApiCall1State();
}

class _FetchApiCall1State extends State<FetchApiCall1> {

  List<dynamic> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fetch API Call")),
      body: ListView.builder(itemBuilder: (context, index){
        final user = users[index];
        final name = user['name']['first'];
        final email = user['email'];
        final ImageUrl = user['picture']['thumbnail'];
        return ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(ImageUrl),
          ),
          title: Text(name),
          subtitle: Text(email),
        );
      },
      itemCount: users.length,),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchresult,
        child: Icon(Icons.add),
      ),
    );
  }

  void fetchresult() async{
    print("fetch Api");

    const Url = "https://randomuser.me/api/?results=20";
    final uri = Uri.parse(Url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      users = json['results'];
    });
    print("Api Fetch Completed");

  }
}
