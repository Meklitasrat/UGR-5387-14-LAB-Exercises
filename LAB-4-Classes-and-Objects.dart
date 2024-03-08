class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  Product product = Product("Widget", 10.0, 5);
  double totalCost = product.calculateTotalCost();

  print("Product: ${product.name}");
  print("Price: \$${product.price}");
  print("Quantity: ${product.quantity}");
  print("Total Cost: \$${totalCost.toStringAsFixed(2)}");
}
