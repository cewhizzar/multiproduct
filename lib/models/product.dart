class Product {
  final int id;
  final String name;
  final double price;

  Product({required this.id, required this.name, required this.price});

  // Convertir de JSON a Product
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      price: json['price'].toDouble(),
    );
  }

  // Convertir de Product a JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
    };
  }
}
