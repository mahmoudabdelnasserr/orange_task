

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final int price;
  final String description;

  const Meal({
    required this.id, required this.categories, required this.title,required this.imageUrl, required this.price, required this.description
  });
}

