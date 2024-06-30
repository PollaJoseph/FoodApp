// food items
class food {
  final String name;
  final String imagepath;
  final String description;
  final double price;
  final foodcategory category;
  List<addon> availableaddons;
  food(
      {required this.description,
      required this.imagepath,
      required this.name,
      required this.price,
      required this.category,
      required this.availableaddons
      });
}

//food categories
enum foodcategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

//food addon
class addon {
  String name;
  double price;
  addon({required this.name, required this.price});
}
