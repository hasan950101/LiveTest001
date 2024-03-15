void main()
{
  List<Map<String, dynamic>> fruits = [
    {'name': 'Orange', 'color': 'Red', 'price': 4.0},
    {'name': 'Banana', 'color': 'Yellow', 'price': 3.0},
    {'name': 'Mango', 'color': 'Green', 'price': 3.6},
  ];

  displayFruitDetails(fruits);

  applyPriceDiscount(fruits, 10);
  print("\n Fruit Details After applying 10% discount:");
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits)
{
  print("Original  Fruit Details before Discount:");
  for (var fruit in fruits) {
    print("Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage)
{
  for (var fruit in fruits) {
    double price = fruit['price'];
    double discountedPrice = price - (price * discountPercentage / 100);
    fruit['price'] = discountedPrice;
  }
}