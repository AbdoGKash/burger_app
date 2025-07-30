import 'package:burger_app/helper/app_strings.dart';
import 'package:burger_app/models/product.dart';
import 'package:burger_app/viewmodel/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductProvider>(context, listen: false);

    return Card(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(product.imageUrl, height: 150),
          SizedBox(height: 18),
          Text(
            product.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color(0xFF0E323D),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 60,
                child: Text(
                  '${product.price.toStringAsFixed(2)} ${AppStrings.currencySar}',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF7CA0B1),
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              Container(
                width: 110,
                decoration: BoxDecoration(
                  color: Color(0xFFEEF6FD),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove, size: 15),
                      onPressed: () {
                        provider.decrementQty(product);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(AppStrings.quantityDecreased)),
                        );
                      },
                    ),
                    Text(
                      '${product.quantity}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0E323D),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.add, size: 15),
                      onPressed: () {
                        provider.incrementQty(product);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(AppStrings.quantityIncreased)),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
