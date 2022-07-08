
import 'package:http/http.dart' as http;
import 'package:upc_2022_1_semana11_1/api/listaPost.dart';
import 'dart:convert';

import 'package:upc_2022_1_semana11_1/api/post.dart';

class service{

  static Future<List<post>> getPost() async{

    final rspta=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if(rspta.statusCode==200){
      final rsptaJson=json.decode(rspta.body);
      final todosPost=listPost.listaPost(rsptaJson);
      return todosPost;
    }
    return <post>[];

  }

}