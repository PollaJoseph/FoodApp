import 'package:chatbot/model/Cart_Items.dart';
import 'package:chatbot/model/Food.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class restaurant extends ChangeNotifier {
  final List<food> _menu = [
    food(
        description:
            "Large burger sandwich with two burger patties, tomatoes, cheese and meat and lettuce",
        imagepath: "images/BIG BURGER.jpeg",
        name: "Big Burger",
        price: 200,
        category: foodcategory.burgers,
        availableaddons: [
          addon(name: 'EXTRA CHEESE', price: 10.5),
          addon(name: "EXTRA SAUCE", price: 5.5),
          addon(name: "EXTRA TOMATOES", price: 3),
          addon(name: "EXTRA LETTURCE", price: 4),
          addon(name: "EXTRA MEET", price: 20),
        ]),
    food(
        description:
            "A burger sandwich consisting of a burger patty, cheese, tomatoes, pickled cucumbers and lettuce",
        imagepath: "images/BEEF BURGER.jpeg",
        name: "Singel Beef Burger",
        price: 150,
        category: foodcategory.burgers,
        availableaddons: [
          addon(name: 'EXTRA CHEESE', price: 10.5),
          addon(name: 'EXTRA PICKLED CUCUMBERS ', price: 9),
          addon(name: "EXTRA TOMATOES", price: 3),
          addon(name: "EXTRA LETTURCE", price: 4),
        ]),
    food(
        description:
            "A burger sandwich consisting of a burger patty, lots of cheese, tomatoes, cucumbers and lettuce",
        imagepath: "images/CHEESE BURGER .jpeg",
        name: "Double Burger",
        price: 175,
        category: foodcategory.burgers,
        availableaddons: [
          addon(name: 'EXTRA CHEESE', price: 10.5),
          addon(name: 'EXTRA CUCUMBERS ', price: 8),
          addon(name: "EXTRA TOMATOES", price: 3),
          addon(name: "EXTRA LETTURCE", price: 4),
        ]),
    food(
        description:
            "A burger sandwich consisting of a chicken burger patty, cheese, tomato and lettuce",
        imagepath: "images/CHICKEN BURGER.jpeg",
        name: "Chicken Burger",
        price: 160,
        category: foodcategory.burgers,
        availableaddons: [
          addon(name: 'EXTRA CHEESE', price: 10.5),
          addon(name: "EXTRA TOMATOES", price: 3),
          addon(name: "EXTRA LETTURCE", price: 4),
        ]),
    food(
        description:
            "A burger sandwich consisting of two burger patties, cheese, tomatoes, lettuce and onions",
        imagepath: "images/DOUBLE CHEESE BURGER.jpeg",
        name: "Cheesy Burger",
        price: 200,
        category: foodcategory.burgers,
        availableaddons: [
          addon(name: 'EXTRA CHEESE', price: 10.5),
          addon(name: "EXTRA TOMATOES", price: 3),
          addon(name: "EXTRA LETTURCE", price: 4),
          addon(name: "EXTRA ONIONE", price: 5),
        ]),
    food(
        description:
            "Burger sandwich consisting of a burger patty, tomatoes, lettuce, onions, mushrooms and mushroom sauce.",
        imagepath: "images/MUSHROOM BURGER.jpeg",
        name: "Mushroom Burger",
        price: 190,
        category: foodcategory.burgers,
        availableaddons: [
          addon(name: 'EXTRA MASHROOM', price: 15),
          addon(name: 'EXTRA MASHROOM SAUCE', price: 12),
          addon(name: "EXTRA TOMATOES", price: 3),
          addon(name: "EXTRA LETTURCE", price: 4),
          addon(name: "EXTRA ONIONE", price: 5),
        ]),

// dessert

    food(
        description: "Fresh baked apple pie",
        imagepath: "images/APPLE PIE.jpeg",
        name: "Apple Pie",
        price: 70,
        category: foodcategory.desserts,
        availableaddons: [
          addon(name: 'EXTRA APPLE', price: 7),
          addon(name: 'EXTRA ICE CREAM ', price: 19),
          addon(name: 'EXTRA CINNAMON', price: 9),
        ]),
    food(
        description:
            "Cheese cake contains the finest types of cheese and blueberries with blueberry sauce and butter biscuits.",
        imagepath: "images/BLUEBERRY CHESSECAKE.jpeg",
        name: "Berry Chessecake",
        price: 80,
        category: foodcategory.desserts,
        availableaddons: [
          addon(name: 'EXTRA BLUEBERRY', price: 17),
          addon(name: 'EXTRA BLUEBERRY SAUCE', price: 14),
        ]),
    food(
        description:
            "Chocolate ice cream with fresh biscuits, square chocolate pieces and some grated chocolate",
        imagepath: "images/CHOCO ICE CREAM.jpeg",
        name: "Choco Ice Cream",
        price: 50,
        category: foodcategory.desserts,
        availableaddons: [
          addon(name: 'EXTRA CHOCOLATE SAUCE', price: 16),
          addon(name: "EXTRA GRATED CHOCOLATE", price: 7),
        ]),
    food(
        description:
            "Well baked cinnamon roll with the finest cinnamon and sugar",
        imagepath: "images/CINNAMON ROLL.jpeg",
        name: "Cinnamon Roll",
        price: 80,
        category: foodcategory.desserts,
        availableaddons: [
          addon(name: 'EXTRA CINNAMON ', price: 9),
          addon(name: 'EXTRA SUGAR', price: 12),
          addon(name: 'EXTRA NUTS ', price: 22),
        ]),
    food(
        description: "Tiramisu with ladyfingers, coffee beans and raw cocoa",
        imagepath: "images/TIRAMISU.jpeg",
        name: "Tiramisu",
        price: 70,
        category: foodcategory.desserts,
        availableaddons: [
          addon(name: 'EXTRA CHOCOLATE PIECE ', price: 19),
          addon(name: 'EXTRA RAW COCOA ', price: 18.5),
          addon(name: 'EXTRA LADY FINGERS ', price: 15.5),
          addon(name: 'EXTRA COFFEE BEANS ', price: 15.5),
        ]),
    food(
        description:
            "Oreo ice cream with chocolate, a piece of Oreo cookie, and chocolate sauce",
        imagepath: "images/OREO ICE CREAM.jpeg",
        name: "Oreo Ice Cream",
        price: 55,
        category: foodcategory.desserts,
        availableaddons: [
          addon(name: 'EXTRA OREO ', price: 11),
          addon(name: 'EXTRA CHOCOLATE SAUCE ', price: 16),
        ]),
    food(
        description:
            "Vanilla ice cream with chocolate sauce, biscuit pieces and nuts",
        imagepath: "images/VANILLA ICE CREAM.jpeg",
        name: "Vanilla Ice Cream",
        price: 50,
        category: foodcategory.desserts,
        availableaddons: [
          addon(name: 'EXTRA CHOCOLATE SAUCE ', price: 16),
          addon(name: 'EXTRA NUTS ', price: 22),
          addon(name: 'EXTRA BISCUIT ', price: 9),
        ]),

//sides
    food(
        description:
            "Crispy potato fingers fried in oil with ketchup and mayonnaise",
        imagepath: "images/FRIES.jpeg",
        name: "Fries",
        price: 30,
        category: foodcategory.sides,
        availableaddons: [
          addon(name: "EXTRA KETCHUP", price: 10),
          addon(name: "EXTRA MAYONNAISE", price: 12)
        ]),
    food(
        description:
            "Very small cut potatoes fried with ketchup and green onions",
        imagepath: "images/HASHBROWNS.jpeg",
        name: "Hashbrowns",
        price: 40,
        category: foodcategory.sides,
        availableaddons: [
          addon(name: 'EXTRA KETCHUP ', price: 10),
          addon(name: "EXTRA GEREEN ONIONS", price: 4)
        ]),
    food(
        description: "Fried and crispy onion rings with sauce",
        imagepath: "images/ONION RINGES.jpeg",
        name: "Onion Ringes",
        price: 33,
        category: foodcategory.sides,
        availableaddons: [
          addon(name: 'EXTRA SAUCE ', price: 12.5),
        ]),

//drinks

    food(
        description: "Cold Coca-Cola with ice cubes",
        imagepath: "images/COCA COLA.jpeg",
        name: "Cola",
        price: 20,
        category: foodcategory.drinks,
        availableaddons: [
          addon(name: 'EXTRA ICE ', price: 2),
        ]),
    food(
        description: "Fanta with ice cubes",
        imagepath: "images/FANTA.jpeg",
        name: "Fanta",
        price: 20,
        category: foodcategory.drinks,
        availableaddons: [
          addon(name: 'EXTRA ICE ', price: 2),
        ]),
    food(
        description: "Sprite with ice cubes",
        imagepath: "images/SPRITE.jpeg",
        name: "Sprite",
        price: 20,
        category: foodcategory.drinks,
        availableaddons: [
          addon(name: 'EXTRA ICE ', price: 2),
        ]),
    food(
        description: "Milk chocolate and raw cocoa",
        imagepath: "images/CHOCO MILK.jpeg",
        name: "Choco Milk",
        price: 25,
        category: foodcategory.drinks,
        availableaddons: [
          addon(name: 'EXTRA RAW COCOA ', price: 18.5),
          addon(name: 'EXTRA  Whipping cream ', price: 7.5),
        ]),
    food(
        description: "Fresh and cold orange juice",
        imagepath: "images/ORANGE JUICE.jpeg",
        name: "Orange Juice",
        price: 15,
        category: foodcategory.drinks,
        availableaddons: [
          addon(name: 'EXTRA ICE ', price: 2),
        ]),
    food(
        description: "Natural fresh apple juice with ice",
        imagepath: "images/APPLE JUICE.jpeg",
        name: "Apple Juice",
        price: 17,
        category: foodcategory.drinks,
        availableaddons: [
          addon(name: 'EXTRA ICE ', price: 2),
        ]),

//salads

    food(
        description:
            "Salad with chicken pieces, cherry tomatoes, onions, lettuce, avocado, cucumber and white cheese",
        imagepath: "images/CHICKEN SALAD.jpeg",
        name: "Chicken Salad",
        price: 90,
        category: foodcategory.salads,
        availableaddons: [
          addon(name: 'EXTRA CHICKEN ', price: 40),
          addon(name: 'EXTRA CHERRY TOMATOES ', price: 6),
          addon(name: "EXTRA ONIONE", price: 5),
          addon(name: "EXTRA LETTURCE", price: 4),
          addon(name: 'EXTRA AVOCADO ', price: 12),
          addon(name: 'EXTRA CUCUMBERS ', price: 8),
          addon(name: 'EXTRA WHITE CHEESE ', price: 11),
        ]),
    food(
        description:
            "Green salad with cherry tomatoes, lettuce, avocado, cucumber, white cheese, green spinach and arugula.",
        imagepath: "images/GREEN SALAD.jpeg",
        name: "Green Salad",
        price: 70,
        category: foodcategory.salads,
        availableaddons: [
          addon(name: 'EXTRA CHERRY TOMATOES ', price: 6),
          addon(name: "EXTRA LETTURCE", price: 4),
          addon(name: 'EXTRA AVOCADO ', price: 12),
          addon(name: 'EXTRA CUCUMBERS ', price: 8),
          addon(name: 'EXTRA WHITE CHEESE ', price: 11),
          addon(name: 'EXTRA GREEN SPINACH ', price: 9),
          addon(name: 'EXTRA ARUGULA ', price: 6),
        ]),
    food(
        description:
            "Mexican salad with cherry tomatoes, lettuce, cucumber, white cheese, green spinach, arugula, yellow pepper, carrots and turnips.",
        imagepath: "images/MEXICO SALAD.jpeg",
        name: "Mexico Salad",
        price: 77,
        category: foodcategory.salads,
        availableaddons: [
          addon(name: 'EXTRA CHERRY TOMATOES ', price: 6),
          addon(name: "EXTRA LETTURCE", price: 4),
          addon(name: 'EXTRA YELLOW PEPPER ', price: 15),
          addon(name: 'EXTRA CUCUMBERS ', price: 8),
          addon(name: 'EXTRA WHITE CHEESE ', price: 11),
          addon(name: 'EXTRA GREEN SPINACH ', price: 9),
          addon(name: 'EXTRA ARUGULA ', price: 6),
          addon(name: 'EXTRA CARROT ', price: 7),
          addon(name: 'EXTRA TURNIPS ', price: 8),
        ]),
    food(
        description:
            "Salad with cherry tomatoes, lettuce, cucumber, white cheese, onions and olives",
        imagepath: "images/SALAD.jpeg",
        name: "Salad",
        price: 60,
        category: foodcategory.salads,
        availableaddons: [
          addon(name: 'EXTRA CHERRY TOMATOES ', price: 6),
          addon(name: "EXTRA LETTURCE", price: 4),
          addon(name: 'EXTRA CUCUMBERS ', price: 8),
          addon(name: 'EXTRA WHITE CHEESE ', price: 11),
          addon(name: 'EXTRA OLIVES ', price: 12.5),
          addon(name: "EXTRA ONIONE", price: 5),
        ]),
    food(
        description:
            "Tuna salad with cherry tomatoes, lettuce, cucumber, onion, black olives, and green olives",
        imagepath: "images/TONA SALAD.jpeg",
        name: "Tona Salad",
        price: 80,
        category: foodcategory.salads,
        availableaddons: [
          addon(name: 'EXTRA TONA ', price: 30),
          addon(name: 'EXTRA CHERRY TOMATOES ', price: 6),
          addon(name: "EXTRA LETTURCE", price: 4),
          addon(name: 'EXTRA CUCUMBERS ', price: 8),
          addon(name: 'EXTRA GREEN OLIVES ', price: 11.5),
          addon(name: 'EXTRA BLACL OLIVES ', price: 12.5),
          addon(name: "EXTRA ONIONE", price: 5),
        ]),
  ];

  String _deliveryaddress = "NORTH 90TH STREET, FIFTH SETTLEMENT";

  List<food> get menu => _menu;
  List<cartitems> get cart => _cart;
  String get deliveryaddress => _deliveryaddress;

  final List<cartitems> _cart = [];

  void addtocart(food Food, List<addon> selectedaddons) {
    cartitems? cartitem = _cart.firstWhereOrNull((items) {
      bool issamefood = items.Food == Food;
      bool issameaddons =
          ListEquality().equals(items.selectedaddons, selectedaddons);
      return issameaddons && issamefood;
    });
    if (cartitem != null) {
      cartitem.quantitiy++;
    } else {
      _cart.add(cartitems(Food: Food, selectedaddons: selectedaddons));
    }
    notifyListeners();
  }

  void removefromcart(cartitems cartitem) {
    int cartindex = _cart.indexOf(cartitem);
    if (cartindex != -1) {
      if (_cart[cartindex].quantitiy > 1) {
        _cart[cartindex].quantitiy--;
      } else {
        _cart.removeAt(cartindex);
      }
    }
    notifyListeners();
  }

  double gettotalprice() {
    double total = 0.0;
    for (cartitems cartitem in _cart) {
      double itemtotal = cartitem.Food.price;

      for (addon Addon in cartitem.selectedaddons) {
        itemtotal += Addon.price;
      }
      total += itemtotal * cartitem.quantitiy;
    }
    return total;
  }

  int gettotalitemcount() {
    int totalitemcount = 0;
    for (cartitems cartitem in _cart) {
      totalitemcount += cartitem.quantitiy;
    }
    return totalitemcount;
  }

  void clearcart() {
    _cart.clear();
    notifyListeners();
  }

  void updatedeliveryaddress(String newdaddress) {
    _deliveryaddress = newdaddress;
    notifyListeners();
  }

  String dispalycartreceipt() {
    final receipt = StringBuffer();
    receipt.writeln("HERE'S YOUR RECEIPT.");
    receipt.writeln();
    String formateddata =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formateddata);
    receipt.writeln();

    receipt.writeln("---------------------");

    for (final cartitems in _cart) {
      receipt.writeln(
          "${cartitems.quantitiy} x ${cartitems.Food.name}- ${_formatprice(cartitems.Food.price)}");
      if (cartitems.selectedaddons.isNotEmpty) {
        receipt
            .writeln("   ADD-ONS: ${_formataddons(cartitems.selectedaddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("---------------------");
    receipt.writeln();
    receipt.writeln("TOTAL ITEMS: ${gettotalitemcount()}");
    receipt.writeln("TOTAL ITEMS: ${_formatprice(gettotalprice())}");
    receipt.writeln();
    receipt.writeln("DELIVERING TO: $deliveryaddress ");
    return receipt.toString();
  }

  String _formatprice(double price) {
    return "${price.toStringAsFixed(2)} EGP";
  }

  String _formataddons(List<addon> addons) {
    return addons
        .map((addon) => "${addon.name}(${_formatprice(addon.price)})")
        .join(",");
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _chatbotcontroller = TextEditingController();
  List<String> messages = [];

  Map<RegExp, String Function(String, BuildContext)> chatResponses = {
    RegExp(r'how are you\??', caseSensitive: false):
        (String _, BuildContext context) => "i am fine, how about you?",
    RegExp(r'price of big burger\??', caseSensitive: false):
        (String _, BuildContext context) => "200 EGP",
    RegExp(r'price of TIRAMISU\??', caseSensitive: false):
        (String _, BuildContext context) => "70 EGP",
    RegExp(r'price of SINGEL BEEF BURGER\??', caseSensitive: false):
        (String _, BuildContext context) => "150 EGP",
    RegExp(r'price of DOUBLE BURGER\??', caseSensitive: false):
        (String _, BuildContext context) => "175 EGP",
    RegExp(r'price of CHICKEN BURGER\??', caseSensitive: false):
        (String _, BuildContext context) => "160 EGP",
    RegExp(r'price of CHEESY BURGER\??', caseSensitive: false):
        (String _, BuildContext context) => "200 EGP",
    RegExp(r'price of MUSHROOM BURGER\??', caseSensitive: false):
        (String _, BuildContext context) => "190 EGP",
    RegExp(r'price of CHICKEN SALAD\??', caseSensitive: false):
        (String _, BuildContext context) => "90 EGP",
    RegExp(r'price of GREEN SALAD\??', caseSensitive: false):
        (String _, BuildContext context) => "70 EGP",
    RegExp(r'price of MEXICO SALAD\??', caseSensitive: false):
        (String _, BuildContext context) => "77 EGP",
    RegExp(r'price of SALAD\??', caseSensitive: false):
        (String _, BuildContext context) => "60 EGP",
    RegExp(r'price of TONA SALAD\??', caseSensitive: false):
        (String _, BuildContext context) => "80 EGP",
    RegExp(r'price of APPLE PIE\??', caseSensitive: false):
        (String _, BuildContext context) => "70 EGP",
    RegExp(r'price of BERRY CHESSECAKE\??', caseSensitive: false):
        (String _, BuildContext context) => "80 EGP",
    RegExp(r'price of CHOCO ICE CREAM\??', caseSensitive: false):
        (String _, BuildContext context) => "50 EGP",
    RegExp(r'price of CINNAMON ROLL\??', caseSensitive: false):
        (String _, BuildContext context) => "80 EGP",
    RegExp(r'price of OREO ICE CREAM\??', caseSensitive: false):
        (String _, BuildContext context) => "55 EGP",
    RegExp(r'price of VANILLA ICE CREAM\??', caseSensitive: false):
        (String _, BuildContext context) => "50 EGP",
    RegExp(r'price of COCA COLA\??', caseSensitive: false):
        (String _, BuildContext context) => "20 EGP",
    RegExp(r'price of FANTA\??', caseSensitive: false):
        (String _, BuildContext context) => "20 EGP",
    RegExp(r'price of SPRITE\??', caseSensitive: false):
        (String _, BuildContext context) => "20 EGP",
    RegExp(r'price of CHOCO MILK\??', caseSensitive: false):
        (String _, BuildContext context) => "25 EGP",
    RegExp(r'price of ORANGE JUICE\??', caseSensitive: false):
        (String _, BuildContext context) => "15 EGP",
    RegExp(r'price of APPLE JUICE\??', caseSensitive: false):
        (String _, BuildContext context) => "17 EGP",
    RegExp(r'price of FRIES\??', caseSensitive: false):
        (String _, BuildContext context) => "30 EGP",
    RegExp(r'price of HASHBROWNS\??', caseSensitive: false):
        (String _, BuildContext context) => "40 EGP",
    RegExp(r'price of ONION RINGES\??', caseSensitive: false):
        (String _, BuildContext context) => "33 EGP",
    RegExp(r'ingredients of BIG BURGER\??', caseSensitive: false): (String _,
            BuildContext context) =>
        "Large burger sandwich with two burger patties, tomatoes, cheese and meat and lettuce",
    RegExp(r'ingredients of SINGEL BEEF BURGER\??',
        caseSensitive: false): (String _,
            BuildContext context) =>
        "A burger sandwich consisting of a burger patty, cheese, tomatoes, pickled cucumbers and lettuce",
    RegExp(r'ingredients of DOUBLE BURGER\??', caseSensitive: false): (String _,
            BuildContext context) =>
        "A burger sandwich consisting of a burger patty, lots of cheese, tomatoes, cucumbers and lettuce",
    RegExp(r'ingredients of CHICKEN BURGER\??',
        caseSensitive: false): (String _,
            BuildContext context) =>
        "A burger sandwich consisting of a chicken burger patty, cheese, tomato and lettuce",
    RegExp(r'ingredients of CHEESY BURGER\??', caseSensitive: false): (String _,
            BuildContext context) =>
        "A burger sandwich consisting of two burger patties, cheese, tomatoes, lettuce and onions",
    RegExp(r'ingredients of MUSHROOM BURGER\??',
        caseSensitive: false): (String _,
            BuildContext context) =>
        "Burger sandwich consisting of a burger patty, tomatoes, lettuce, onions, mushrooms and mushroom sauce.",
    RegExp(r'ingredients of CHICKEN SALAD\??', caseSensitive: false): (String _,
            BuildContext context) =>
        "Salad with chicken pieces, cherry tomatoes, onions, lettuce, avocado, cucumber and white cheese",
    RegExp(r'ingredients of GREEN SALAD\??', caseSensitive: false): (String _,
            BuildContext context) =>
        "Green salad with cherry tomatoes, lettuce, avocado, cucumber, white cheese, green spinach and arugula.",
    RegExp(r'ingredients of MEXICO SALAD\??', caseSensitive: false): (String _,
            BuildContext context) =>
        "Mexican salad with cherry tomatoes, lettuce, cucumber, white cheese, green spinach, arugula, yellow pepper, carrots and turnips.",
    RegExp(r'ingredients of SALAD\??', caseSensitive: false): (String _,
            BuildContext context) =>
        "Salad with cherry tomatoes, lettuce, cucumber, white cheese, onions and olives",
    RegExp(r'ingredients of TONA SALAD\??', caseSensitive: false): (String _,
            BuildContext context) =>
        "Tuna salad with cherry tomatoes, lettuce, cucumber, onion, black olives, and green olives",
    RegExp(r'menu of burger\??', caseSensitive: false): (String _,
            BuildContext context) =>
        "We have a variety of burgers consisting of:\n BIG BURGER \n SINGEL BEEF BURGER \n DOUBLE BURGER \n CHICKEN BURGER \n CHEESY BURGER \n MUSHROOM BURGER",
    RegExp(r'menu of salad\??', caseSensitive: false): (String _,
            BuildContext context) =>
        "We have a variety of salad consisting of:\n CHICKEN SALAD \n GREEN SALAD \n MEXICO SALAD \n SALAD \n TONA SALAD",
    RegExp(r'menu of dessert\??', caseSensitive: false): (String _,
            BuildContext context) =>
        "We have a variety of desesrt consisting of:\n APPLE PIE \n BERRY CHESSECAKE \n CHOCO ICE CREAM \n CINNAMON ROLL \n TIRAMISU \n OREO ICE CREAM \n VANILLA ICE CREAM",
    RegExp(r'menu of drink\??', caseSensitive: false): (String _,
            BuildContext context) =>
        "We have a variety of deink consisting of:\n COCA COLA \n FANTA \n SPRITE \n CHOCO MILK \n ORANGE JUICE \n APPLE JUICE",
    RegExp(r'menu of side\??', caseSensitive: false): (String _,
            BuildContext context) =>
        "We have a variety of side consisting of:\n FRIES \n HASHBROWNS \n ONION RINGES",
    RegExp(r'request extras\??', caseSensitive: false):
        (String _, BuildContext context) => "Of course yes",
    RegExp(r'best burger\??', caseSensitive: false):
        (String _, BuildContext context) =>
            "All our burgers are special, but I will recommend you beef burger",
    RegExp(r'best salad\??', caseSensitive: false):
        (String _, BuildContext context) =>
            "All our salad are special, but I will recommend you chicken salad",
    RegExp(r'best drink\??', caseSensitive: false):
        (String _, BuildContext context) =>
            "All our drink are special, but I will recommend you coca cola",
    RegExp(r'best dessert\??', caseSensitive: false): (String _,
            BuildContext context) =>
        "All our dessert are special, but I will recommend you berry Cheese cake",
    RegExp(r'best side\??', caseSensitive: false):
        (String _, BuildContext context) =>
            "All our side are special, but I will recommend you fries",
    RegExp(r'request delivery\??', caseSensitive: false):
        (String _, BuildContext context) => "Of course yes",
    RegExp(r'delivery speed\??', caseSensitive: false): (String _,
            BuildContext context) =>
        "We try hard to deliver the order as quickly as possible and with the best quality. The average speed of delivering orders is from 30 minutes to an hour.",
    RegExp(r'operating hours\??', caseSensitive: false):
        (String _, BuildContext context) => "We work from 12 am to 1 pm",
    RegExp(r'sections of restaurant\??', caseSensitive: true): (String _,
            BuildContext context) =>
        "We have many sections and items such as burgers, salads, side dishes, drinks and desserts.",
    RegExp(r'reserve outdoor table\??', caseSensitive: true): (String _,
            BuildContext context) =>
        "You have already entered your email and you log in. We will contact you via it",
    RegExp(r'reserve indoor table\??', caseSensitive: true): (String _,
            BuildContext context) =>
        "You have already entered your email and you log in. We will contact you via it",
    RegExp(r'tables are available\??', caseSensitive: true): (String _,
            BuildContext context) =>
        "The restaurant is busy at this time, but we have two tables available, which are Table No.9 and Table No.20 and Table No.22",
    RegExp(r'reserve outdoor table\??', caseSensitive: true):
        (String _, BuildContext context) => "Of course you do",
    RegExp(r'outdoor tables the restaurant\??', caseSensitive: true):
        (String _, BuildContext context) =>
            "Yes, of course we have it outdoor and indoor",
    RegExp(r'indoor tables the restaurant\??', caseSensitive: true):
        (String _, BuildContext context) =>
            "Yes, of course we have it outdoor and indoor",
    RegExp(r'reserve table number 9\??', caseSensitive: true):
        (String _, BuildContext context) =>
            "Well, the reservation will be made in whose name?",
    RegExp(r'reserve table number 20\??', caseSensitive: true):
        (String _, BuildContext context) =>
            "Well, the reservation will be made in whose name?",
    RegExp(r'reserve table number 22\??', caseSensitive: true):
        (String _, BuildContext context) =>
            "Well, the reservation will be made in whose name?",
    RegExp(r'name is omar\??', caseSensitive: true):
        (String _, BuildContext context) =>
            "Okay, MR.OMAR, your reservation has been completed successfully",
    RegExp(r'how are you\??', caseSensitive: false):
        (String _, BuildContext context) => "I am fine, how about you?",
    RegExp(r'order (.*)', caseSensitive: false):
        (String text, BuildContext context) {
      final itemName = RegExp(r'order (.*)').firstMatch(text)?.group(1);
      if (itemName != null) {
        final restModel = context.read<restaurant>();
        final foodItem = restModel.menu.firstWhereOrNull(
            (item) => item.name.toLowerCase() == itemName.toLowerCase());
        if (foodItem != null) {
          restModel.addtocart(foodItem, []);
          return "Added $itemName to your cart.";
        } else {
          return "Sorry, we don't have $itemName.";
        }
      } else {
        return "Please specify an item to order.";
      }
    },
  };

  void _handleSubmitted(String text) {
    _chatbotcontroller.clear();
    setState(() {
      messages.add("You: $text");
      String response = getResponse(text, context);
      messages.add("Chat assistant: $response");
    });
  }

  String getResponse(String question, BuildContext context) {
    for (var entry in chatResponses.entries) {
      if (entry.key.hasMatch(question)) {
        return entry.value(question, context);
      }
    }
    return "Sorry, I don't understand.";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat Assistant"),
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Consumer<restaurant>(
        builder: (context, restModel, child) {
          return Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(messages[index]),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _chatbotcontroller,
                  onSubmitted: _handleSubmitted,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.tertiary)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary)),
                    hintStyle:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                    hintText: "Send a message...",
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () =>
                          _handleSubmitted(_chatbotcontroller.text),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
