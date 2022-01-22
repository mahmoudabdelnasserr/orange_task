import 'package:flutter/material.dart';
import 'package:task_login_register/widgets/product_item.dart';
import '../dummy_data.dart';

class CategoryProductsScreen extends StatelessWidget {
  static const routeName = 'categories-product/';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    const routeName = '/categories';
    final routeArgs =
    ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryProduct = DUMMY_MEALS.where((product){
      return product.categories.contains(categoryId);

    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle!),
        ),
        body: ListView.builder(itemBuilder: (ctx, index){
          return ProductItem(title: categoryProduct[index].title,imageUrl: categoryProduct[index].imageUrl,price: categoryProduct[index].price,description: categoryProduct[index].description );


        },itemCount: categoryProduct.length ,
        )
    );
  }
}
