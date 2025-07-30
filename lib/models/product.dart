class Product {
  final int id;
  final String name;
  final double price;
  final String imageUrl;
  int quantity;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    this.quantity = 0,
  });

  factory Product.fromMap(Map<String, dynamic> map) => Product(
    id: map['id'],
    name: map['name'],
    price: map['price'],
    imageUrl: map['imageUrl'],
    quantity: map['quantity'] ?? 0,
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'price': price,
    'imageUrl': imageUrl,
    'quantity': quantity,
  };
}