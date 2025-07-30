import 'package:burger_app/helper/app_strings.dart';
import 'package:burger_app/viewmodel/product_provider.dart';
import 'package:burger_app/widgets/filter_chips_row.dart';
import 'package:burger_app/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F8FD),
        actions: [
          InkWell(
            onTap:
                () => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      AppStrings.searchProduct,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.search, color: Colors.black, size: 25),
            ),
          ),
        ],
        title: Text(
          AppStrings.categories,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body:
          provider.products.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5, left: 5),
                    child: FilterChipsRow(),
                  ),
                  Expanded(
                    child: GridView.count(
                      padding: EdgeInsets.all(5),
                      crossAxisCount: 2,
                      childAspectRatio: 0.78,
                      children:
                          provider.products
                              .map((product) => ProductCard(product: product))
                              .toList(),
                    ),
                  ),
                ],
              ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 12, left: 12, right: 12),
        height: 55,
        decoration: BoxDecoration(
          color: Color(0xFF579FD2),
          borderRadius: BorderRadius.circular(100),
        ),

        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Row(
              children: [
                SizedBox(width: 5),
                Icon(Icons.arrow_back_ios, color: Colors.white, size: 18),
                InkWell(
                  onTap:
                      () => ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            '${AppStrings.total} ${provider.totalPrice.toStringAsFixed(2)}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                  child: Text(
                    AppStrings.viewCart,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(width: 5),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  provider.totalPrice.toStringAsFixed(2),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  AppStrings.currencySar,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                SizedBox(width: 5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
