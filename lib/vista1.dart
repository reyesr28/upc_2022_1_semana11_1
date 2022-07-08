import 'package:flutter/material.dart';
import 'package:upc_2022_1_semana11_1/api/service.dart';

import 'Detalle.dart';

class vista1 extends StatelessWidget {
  const vista1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trabajando Networking'),
      ),
      body: FutureBuilder(
        initialData: [],
        future: service.getPost(),
        builder:(context, AsyncSnapshot<List> snapshot) {
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index){
                var posteo=snapshot.data![index];
                return ListTile(
                  title: Text('Id: '+posteo.id.toString()),
                  subtitle: Text('Titulo: '+posteo.title.toString()),
                  
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Detalle(p: posteo)));
                  },
                );
              });
        },
      ),
    );
  }
}
