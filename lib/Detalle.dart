import 'package:flutter/material.dart';
import 'package:upc_2022_1_semana11_1/api/post.dart';

class Detalle extends StatelessWidget {

  post p;

  Detalle({required this.p});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle de Post'),
      ),
      body:Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text("Detalle de Elemento ",
          style: TextStyle(fontSize: 25,
          fontWeight: FontWeight.bold),),
          SizedBox(
            height: 40,
          ),
          ListTile(
            title:Text("Titulo: "+this.p.title+"\n"),
            subtitle: Text("Contenido: "+this.p.body),
            leading: Icon(Icons.twelve_mp_outlined,size: 50,),

          ),
        ],
      ),
    );
  }
}
