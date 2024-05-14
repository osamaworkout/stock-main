import 'package:dio/dio.dart';
import 'package:project1/features/home/data/models/product_model.dart';

  class ApiCon{

  late Dio dio;

  ApiCon(){
    dio = Dio();
  }

  Future<List<ProductModel>>getAllProducts() async {
      Response<List>  response =  await dio.get('http://192.168.1.7:3000/api/products');
      List<ProductModel> products=[];
      if(response.data!=null){
         products = List<ProductModel>.from(response.data!.map((e) => ProductModel.fromJson(e)));
      }
      return products;
    }
  }