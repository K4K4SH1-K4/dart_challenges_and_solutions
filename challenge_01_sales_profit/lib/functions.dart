//Revenue calculator
double revenue({
  required double sellingPrice,
  required int quantityBought,
  required double discount,
}) {
  double initialSales = sellingPrice * quantityBought;

  if (discount == 0) {
    return initialSales;
  } else {
    double discountedRevenue = initialSales - (initialSales * (discount / 100));
    return discountedRevenue;
  }
}

// Cost of quatity
double costOfQuantitySold({
  required double sellingPrice,
  required int quantitySold,
}) {
  return sellingPrice * quantitySold;
}

// Discounted fee
double discount({
  required double sellingPrice,
  required int quantityBought,
  required double discount,
}) {
  double sales = sellingPrice * quantityBought;
  double discountedFee = sales * (discount / 100);
  return discountedFee;
}
