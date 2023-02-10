import 'package:dio/dio.dart';

import 'items.dart';

class Api {

  Future<List<Product>> getItems() async{
     final response = await Dio().get("https://catalog.korzinka.uz/api/catalogs/categories/19");
     final korzinka = Korzinka.fromJson(response.data);
     return korzinka.data.products;
  }
}
