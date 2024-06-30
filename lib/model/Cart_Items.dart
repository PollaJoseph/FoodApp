
import 'package:chatbot/model/Food.dart';

class cartitems {
  food Food;
  List<addon> selectedaddons;
  int quantitiy;

  cartitems({
    required this.Food,
    this.quantitiy = 1,
    required this.selectedaddons,
  });

  double get totalprice {
    double addonsprice =
        selectedaddons.fold(0, (sum, addon) => sum + addon.price);
    return (Food.price + addonsprice) * quantitiy;
  }
}
