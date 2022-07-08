
import 'package:upc_2022_1_semana11_1/api/post.dart';

class listPost{
  static List<post> listaPost(List<dynamic> listaJson){
    List<post> listadoPost=[];
    if(listaJson!=null){
      for(var p in listaJson){
        final po=post.objJson(p);
        listadoPost.add(po);
      }
    }
    return listadoPost;
  }
}