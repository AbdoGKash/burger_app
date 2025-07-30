import 'package:burger_app/data/product_mock_data.dart';
import 'package:burger_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ProductProvider extends ChangeNotifier {
  List<Product> _products = [];
  late Database db;

  List<Product> get products => _products;

  Future<void> initDB() async {
    final dbPath = await getDatabasesPath();
    db = await openDatabase(
      join(dbPath, 'products.db'),
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE products(
            id INTEGER PRIMARY KEY,
            name TEXT,
            price REAL,
            imageUrl TEXT,
            quantity INTEGER
          )
        ''');
        await _insertMockData(db);
      },
      version: 1,
    );

    await fetchProducts();
  }

  Future<void> _insertMockData(Database db) async {
    for (var product in mockProducts) {
      await db.insert('products', product.toMap());
    }
  }

  Future<void> fetchProducts() async {
    final List<Map<String, dynamic>> maps = await db.query('products');
    _products = maps.map((e) => Product.fromMap(e)).toList();
    notifyListeners();
  }

  void incrementQty(Product product) {
    product.quantity++;
    updateProduct(product);
  }

  void decrementQty(Product product) {
    if (product.quantity > 0) {
      product.quantity--;
      updateProduct(product);
    }
  }

  Future<void> updateProduct(Product product) async {
    await db.update(
      'products',
      product.toMap(),
      where: 'id = ?',
      whereArgs: [product.id],
    );
    notifyListeners();
  }

  double get totalPrice =>
      _products.fold(0, (sum, item) => sum + (item.price * item.quantity));
}
