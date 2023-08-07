import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model/models.dart';

class FetchData extends StatefulWidget {
  const FetchData({super.key});

  @override
  State<FetchData> createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {
  List<Models> postlist =[];
  Future<List<Models>> getPostApi ()async{
    final response = await http.get(Uri.parse('https://github.com/Ovi/DummyJSON/blob/master/package.json'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        postlist.add(Models(title: i['title'],url:i['url']));
      }
      return postlist;
    }
  else{
    return postlist;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Data'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         FutureBuilder(
            future: getPostApi(),
             builder: (context ,snapshot){
            if(!snapshot.hasData){
              return Column(
                children: [
                  Center(
                    child: Container(
                      height: 60,
                      width: 120,
                      color: Colors.blue,
                      child: const Text('you have done',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    ),
                  ),
                ],
              );
            }else{
              return ListView.builder(
                itemCount: postlist.length,
                  itemBuilder: (context ,index){
                  return Text(index.toString());
              });
            }
            }
         ),
],
        ),
      ),
    );
  }
}
