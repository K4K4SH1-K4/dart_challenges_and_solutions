double salesRevenue({
  required double sellingPrice,
  required double discount,
  required int quantitySold,
}) {
  double totalSales = sellingPrice * quantitySold;
  if (discount == 0) {
    return totalSales;
  } else {
    double totalSalesDiscount = totalSales - (totalSales * (discount / 100));
    return totalSalesDiscount;
  }
}
