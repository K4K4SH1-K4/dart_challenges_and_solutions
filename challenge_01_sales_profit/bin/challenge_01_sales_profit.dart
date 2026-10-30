import 'package:challenge_01_sales_profit/challenge_01_sales_profit.dart';

void main() {
  final report = Business(
    businessName: 'Orbit',
    productName: 'Golf Balls',
    sellingPrice: 300,
    purchasingPrice: 200,
    quantitySold: 10,
    quantityBought: 60,
    discount: 0,
  );
  print(report);
}
