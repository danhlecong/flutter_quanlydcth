import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class MyApp4 extends StatelessWidget {
  const MyApp4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage4(),
    );
  }
}
class Homepage4 extends StatefulWidget {
  const Homepage4({Key? key}) : super(key: key);

  @override
  _Homepage4State createState() => _Homepage4State();
}

class _Homepage4State extends State<Homepage4> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Photo.fetchData();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class Photo {
 final int albumId;
 final int id;
 final String title;
 final String url;
 final String thumbnailUrl;
 Photo(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

 static fetchData() async {
   String url = "http://jsonplaceholder.typicode.com/photos";
   var client = http.Client();
   var response = await client.get(Uri.parse(url));
   if (response.statusCode == 200) {
     var result = response.body;
     var jsonData = jsonDecode(result);
     for(var item in jsonData) {
       print(item);
       var albumID = item['albumId'];
       var id = item['id'];
       var title = item['id'];
       var url = item['url'];
       var thumbnailUrl = item['thumbnailUrl'];

     }

   } else {
     print(response.statusCode);
     throw Exception("loi lay du lieu");
   }
 }
}





