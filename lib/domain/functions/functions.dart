import 'package:a_matual/data/models/category_model.dart';
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
  static Future<void> category () async{
    final supabase = GetIt.instance<SupabaseClient>();
    final categorylist = await supabase.from('categories').select();
    // final category = CategoryModel.fromMap(categorylist);
  }
}