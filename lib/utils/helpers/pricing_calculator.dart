

class TPricingCalculator {
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;

    return totalPrice;
  }

  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    //look for tax rate
    return 0.10;
  }

  static double getShippingCost(String location) {
    //look for shipping cost
    return 5.00;
  }

  //sum all cart values and return amount 
 // static double calculateCartTotal(CartModel cart){
   // return cart.item.map((e) => e.price).fold(0, (previousPrice, currentPrice) = > previousPrice +( currentPrice ?? 0));
  //}
}
