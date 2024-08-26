void main() {
  //  named parameters

  print(calculateFinalPrice(price: 150, discount: 10));

  print(calculateFinalPrice(price: 150));
}

double calculateFinalPrice({required double price, double discount = 0}) {
  double finalPrice = price - (price * discount / 100);

  return finalPrice;
}
