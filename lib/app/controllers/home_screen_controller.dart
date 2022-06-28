import 'package:fintouch/app/models/product.dart';
import 'package:fintouch/app/requests.dart';
import 'package:flutter/cupertino.dart';



class ProductListValueNotifier extends ValueNotifier<List> {
  ProductListValueNotifier({List? value}) : super(value!);

  changeQuantityValue(String money) {
    if (money != '') {
      double moneyToDouble = double.parse(money);
      for (Product product in value) {
        double result = moneyToDouble / product.price;
        product.quantitity = result.toInt();
      }
    } else {
      for (Product product in value) {
        product.quantitity = 0;
      }
    }
    notifyListeners();
  }
}

class HomeScreenController extends ChangeNotifier {

  static List productList = 
    [
      Product(name: 'Maçã', price: 2.00, quantitity: 0),
      Product(name: 'Arroz', price: 3.00, quantitity: 0),
      Product(name: 'Café', price: 15.00, quantitity: 0),
      Product(name: 'Leite', price: 4.00, quantitity: 0),
      Product(name: 'Feijão', price: 5.00, quantitity: 0)
    ];

  ProductListValueNotifier productListValueNotifier = ProductListValueNotifier(value: productList);

  Requests requests = Requests();

  bool? requestLoading = true;

  String? requestMessage;

  


}

