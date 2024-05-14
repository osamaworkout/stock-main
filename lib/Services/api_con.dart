import 'package:dio/dio.dart';
import 'package:project1/features/home/data/models/product_model.dart';

class ApiCon {
  late Dio dio;

  ApiCon() {
    dio = Dio();
  }

  Future<List<ProductModel>> getAllProducts() async {
    print('Started.....');
    try {
      Response response =
          await dio.get('http://192.168.227.24:3000/api/products');
      List<ProductModel> products = [];
      if (response.data != null) {
        products = List<ProductModel>.from(
          response.data.map((e) => ProductModel.fromJson(e)),
        );
      }
      return products;
    } catch (e) {
      print('The error is $e');
      return <ProductModel>[];
    }
  }
}
