import 'package:flutter/material.dart';

import './models/category.dart';
import './models/product.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Watches',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Shoes',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Jackets',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Shirts',
    color: Colors.amber,
  ),
];

const DUMMY_MEALS = const [
  Meal(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Spaghetti with Tomato Sauce',
    imageUrl:
    'https://cdn.picpng.com/watches/painting-watches-38676.png',
 price: 200, description: 'an item',
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    imageUrl:
    'https://m.media-amazon.com/images/I/81cuTtP+n6L._AC_UL320_.jpg', description: 'item2', price: 200,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
    ],
    title: 'Classic Hamburger',
    imageUrl:
    'https://m.media-amazon.com/images/I/71HqmBJ-51L._AC_UL320_.jpg',
    description: 'item 3',
    price: 300,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    imageUrl:
    'https://m.media-amazon.com/images/I/61Ccr0MQm5L._AC_UX679_.jpg',

 price: 500, description: 'item4',
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
    ],
    title: 'Salad with Smoked Salmon',
    imageUrl:
    'https://m.media-amazon.com/images/I/71RfJVWxitS._AC_UL320_.jpg',
    price: 500,
    description: 'item5',
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    imageUrl:
    'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
 price: 400, description: 'item6',
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    imageUrl:
    'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
 description: 'item9', price: 500,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    imageUrl:
    'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg', description: 'item8', price: 900,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c4',
    ],
    title: 'Chocolate Souffle',
    imageUrl:
    'https://m.media-amazon.com/images/I/A1x9sx783mS._AC_UL320_.jpg', price: 900, description: 'item10',

  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    imageUrl:
    'https://m.media-amazon.com/images/I/71Enw5rwl6L._AC_UL320_.jpg', price: 500, description: 'item7',

  ),
  Meal(
    id: 'm10',
    categories: [
      'c3',
    ],
    title: 'Jacket1',
    imageUrl:
    'https://m.media-amazon.com/images/I/71meosa2J0L._AC_UL320_.jpg', price: 500, description: 'item7',

  ),
  Meal(
    id: 'm10',
    categories: [
      'c3',
    ],
    title: 'Jacket2',
    imageUrl:
    'https://m.media-amazon.com/images/I/91JqNJYhR2L._AC_UL320_.jpg', price: 500, description: 'item7',

  ),
];
