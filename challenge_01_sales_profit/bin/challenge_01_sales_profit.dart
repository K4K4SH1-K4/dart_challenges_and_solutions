import 'package:challenge_01_sales_profit/challenge_01_sales_profit.dart';

void main() {
  final report = Business(
    businessName: 'Orbit',
    productName: 'Golf ball',
    purchasingPrice: 4500,
    quantityBought: 12,
    quantitySold: 12,
    sellingPrice: -6000,
    discount: 70,
  );
  print(report);
}
