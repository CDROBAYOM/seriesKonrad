  import 'dart:async';

  import 'package:http/http.dart' as http;
  import 'dart:convert';

  class Book{
    final String id;
    final String title;
    final String cover;
    final String author;
    final String content;
  

    Book({this.id, this.title ,this.cover, this.author, this.content});

    factory Book.fromJson(Map<String, dynamic> json){
      return new Book(
        id: json["ID"],
        title: json["title"],
        cover: json["cover"],
        author: json["author"],
        content: json["content"]
      );
    }
  }


  Future<List<Book>> getData() async{
    final response = await http.get("http://www.etnassoft.com/api/v1/get/?category=cine");
    if(response.statusCode == 200){
      var jsonArray = json.decode(response.body) as List;
      return jsonArray.map(decode).toList();
    }else{
      return new List();
    }
  }

  Book decode(dynamic element){
    return Book.fromJson(element);
  }
