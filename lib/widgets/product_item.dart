import 'package:flutter/material.dart';


class ProductItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int price;
  final String description;

  ProductItem(
      {required this.title, required this.imageUrl,required this.price, required this.description});

  void selectProduct() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectProduct,
      child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
      ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(children: <Widget>[
              ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),
              ),child: Image.network(imageUrl, height: 250, width: double.infinity, fit: BoxFit.cover,)
                ,)
            ],)
          ],
        ),
      ),
    );
  }
}