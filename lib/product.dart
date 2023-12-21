

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutternovclass/productdetails.dart';
import 'package:http/http.dart' as http;

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  List<Product> productList = [];
  ///ServerSide
  @override
  void initState(){
    super.initState();
    fetchProductData();
  }
  Future<void> fetchProductData() async{
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if(response.statusCode==200){
      final List<dynamic> data = json.decode(response.body);
      setState(() {
        productList = data.map((json) => Product.fromJson(json)).toList();
      });

    }
    else{
      print("*******");
      print("*******");
      print(response.body);
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,),
      body: productList.isEmpty
        ? CircularProgressIndicator()
         : ListView.builder(
          itemCount: productList.length,
          itemBuilder: (context,index){
            final product = productList[index];
            return Card(
              child: ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductDetailsPage(product)),
                  );
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(product.image??""),
                  radius: 30,
                ),
                title: Text(productList[index].title??''),
                subtitle: Text(product.description??''),
                trailing: Text("Price: \$${product.price ?? ''}"),
              ),
            );
          }),
    );
  }
}





class Product {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  Product(
      {this.id,
        this.title,
        this.price,
        this.description,
        this.category,
        this.image,
        this.rating});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    // price = json['price'];
    price = json['price']?.toDouble();
    description = json['description'];
    category = json['category'];
    image = json['image'];
    rating =
    json['rating'] != null ? new Rating.fromJson(json['rating']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['description'] = this.description;
    data['category'] = this.category;
    data['image'] = this.image;
    if (this.rating != null) {
      data['rating'] = this.rating!.toJson();
    }
    return data;
  }
}

class Rating {
  double? rate;
  double? count;

  Rating({this.rate, this.count});

  Rating.fromJson(Map<String, dynamic> json) {
    rate = json['rate']?.toDouble();
    count = json['count']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rate'] = this.rate;
    data['count'] = this.count;
    return data;
  }
}
