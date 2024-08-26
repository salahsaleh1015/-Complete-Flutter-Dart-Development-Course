void main() {
  //  optional parameters

  print(calculateFinalPrice(200, 10));

  print(calculateFinalPrice(150));
}

double calculateFinalPrice(double price, [double discount = 0]) {
  double finalPrice = price - (price * discount / 100);

  return finalPrice;
}
