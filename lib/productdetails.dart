import 'package:flutter/material.dart';
import 'package:flutternovclass/product.dart';

class ProductDetailsPage extends StatelessWidget {
final Product product;
ProductDetailsPage(this.product);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,),
      body: Column(
        children: [
          CircleAvatar(radius: 90,backgroundImage: NetworkImage(product.image??""),),
          Text('Titile: ${product.title}'),
          Text("Price:${product.price}"),
          Text("Description:${product.description}"),
          Text("Category${product.category}"),
          // Image.network("this si ")
        ],
      ),
    );
  }
}
