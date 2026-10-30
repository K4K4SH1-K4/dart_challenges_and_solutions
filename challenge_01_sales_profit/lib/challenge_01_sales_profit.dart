import 'package:challenge_01_sales_profit/functions.dart';

class Business {
  Business({
    required String businessName,
    required String productName,
    required double sellingPrice,
    required double purchasingPrice,
    required int quantitySold,
    required int quantityBought,
    required double discount,
  }) {
    _businessName = businessName;
    _productName = productName;
    //Validation before object contruction
    //Dart's throw ArgumentError(...) is a standard way to reject invalid constructor arguments.
    if (quantitySold > quantityBought) {
      throw ArgumentError.value(
        quantityBought,
        'quantityBought',
        'Quantity being sold: $quantitySold can not exceed the quantity that was bought: $quantityBought',
      );
    }
    if (discount > 100) {
      throw ArgumentError.value(
        discount,
        'discount',
        'Discount can not be greater than 100%. Discount: $discount',
      );
    } else {
      _discount = discount;
    }

    if (quantityBought < 0) {
      throw ArgumentError.value(
        quantityBought,
        'quantityBought',
        'Quantity bought can not be negative. Quantity bought: $quantityBought',
      );
    } else {
      _quantityBought = quantityBought;
    }

    if (sellingPrice < 0) {
      throw ArgumentError.value(
        sellingPrice,
        'sellingPrice',
        'Selling price can not be negative. Selling Price: $sellingPrice',
      );
    } else {
      _sellingPrice = sellingPrice;
    }

    if (purchasingPrice < 0) {
      throw ArgumentError.value(
        purchasingPrice,
        'purchasingPrice',
        'Purchasing price can not be negative. Purchasing Price: $purchasingPrice',
      );
    } else {
      _purchasingPrice = purchasingPrice;
    }

    if (quantitySold < 0) {
      throw ArgumentError.value(
        quantitySold,
        'quantity sold',
        'Quantity sold can not be negative. Quantity sold: $quantitySold',
      );
    } else {
      _quantitySold = quantitySold;
    }
  }

  late final String _businessName;
  late final String _productName;
  late final double _sellingPrice;
  late final double _purchasingPrice;
  late final int _quantityBought;
  late final int _quantitySold;
  late final double _discount;

  // Financial Calculators

  double get totalSalesRevenue => salesRevenue(
    sellingPrice: _sellingPrice,
    discount: _discount,
    quantitySold: _quantitySold,
  );

  double get cogs => _purchasingPrice * _quantitySold;

  double get grossProfit => totalSalesRevenue - cogs;
}
