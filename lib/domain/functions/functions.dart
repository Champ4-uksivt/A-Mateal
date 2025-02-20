import 'dart:typed_data';

import 'package:a_matual/data/models/category_model.dart';
import 'package:a_matual/data/models/sneakers_model.dart';
import 'package:flutter/material.dart';
import 'package:a_matual/presentation/widget/my_text.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Functions {
  static Function()? check(String email, String password, BuildContext context) {
  if(email.isEmpty || password.isEmpty)
    {
      Form(child: 
        Container(
          child: Column(
            children: [
              MyText(title: 'Ошибка', size: 16, color: Colors.black)
            ],
          ),
        ),
      );
    }
  }
  static Future<SneakersModel> getSneaker (String id) async{
    final supabase = GetIt.I.get<SupabaseClient>();
    final sneakerlist = await supabase.from('sneakers').select().eq('id', id);
    final sneaker = (sneakerlist as List).map((item) => SneakersModel.fromMap(item)).first;
    return sneaker;
  }
  static Future<CategoryModel> getCategory (int id) async{
    final supabase = GetIt.I.get<SupabaseClient>();
    final categorylist = await supabase.from('categories').select().eq('id', id);
    final category = (categorylist as List).map((item) => CategoryModel.fromMap(item)).first;
    return category;
  }
  static Future<Uint8List> getImage (String id) async{
    final supabase = GetIt.I.get<SupabaseClient>();
    final image = await supabase.storage.from('assets').download('$id.png');
    return image;
  }
  static Future<List<Map<dynamic, String>>> getImages () async{
    final supabase = GetIt.I.get<SupabaseClient>();
    final sneakerslist = await supabase.from('sneakers').select();
    List<Map<dynamic, String>> list = [];
    for (var sneakers in sneakerslist){
      final sneaker = (sneakers as List).map((item) => SneakersModel.fromMap(item)).first;
      final image = await supabase.storage.from('assets').download('${sneaker.id}.png');
      // list.add(image ,sneaker.id);
    }
    return list;
  }
}