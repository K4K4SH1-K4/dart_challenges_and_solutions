import 'package:challenge_01_sales_profit/functions.dart';

String profit = "Profitable";

class Business {
  Business({
    required this._businessName,
    required this._productName,
    required this._purchasingPrice,
    required this._quantityBought,
    required this._quantitySold,
    required this._sellingPrice,
    required this._discount,
  });

  final String _businessName;
  final String _productName;
  final double _sellingPrice;
  final double _purchasingPrice;
  final int _quantityBought;
  final int _quantitySold;
  final double _discount;

  double get totalCost => _quantityBought * _purchasingPrice;

  double get salesRevenue {
    if (_sellingPrice < 0 ||
        _quantityBought < 0 ||
        _quantitySold < 0 ||
        _purchasingPrice < 0) {
      print(
        "We can't have -ve for selling price, quantity bought or purchasing price",
      );
    }
    return revenue(
      sellingPrice: _sellingPrice,
      quantityBought: _quantityBought,
      discount: _discount,
    );
  }

  double get costOfGoodsSold => costOfQuantitySold(
    sellingPrice: _sellingPrice,
    quantitySold: _quantitySold,
  );

  double get grossProfit => salesRevenue - totalCost;

  String get profitType {
    String profit = "Business is profitable";
    if (grossProfit < 0) {
      profit = "Loss";
      return profit;
    } else if (grossProfit == 0) {
      profit = "Break-Even";
      return profit;
    } else {
      return profit;
    }
  }

  double get grossMargin => (grossProfit / salesRevenue) * 100;

  double get discountFee => discount(
    sellingPrice: _sellingPrice,
    quantityBought: _quantityBought,
    discount: _discount,
  );

  @override
  String toString() {
    return 'Business("Business Name":$_businessName,"Product Name":$_productName,"Total Cost":Mwk ${totalCost.toStringAsFixed(2)},"Revenue":Mwk ${salesRevenue.toStringAsFixed(2)},"Cost of goods sold":Mwk ${costOfGoodsSold.toStringAsFixed(2)},"Gross Profit":MWk ${grossProfit.toStringAsFixed(2)},"Gross profit margin":${grossMargin.toStringAsFixed(2)}%, "Discount fee": Mwk ${discountFee.toStringAsFixed(2)}, "Profit-type":$profitType';
  }
}
