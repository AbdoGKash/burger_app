import 'package:burger_app/helper/app_strings.dart';
import 'package:flutter/material.dart';

class FilterChipsRow extends StatelessWidget {
  final int selectedIndex = 3;
  final List<String> filters = [
    AppStrings.spreadableCheese,
    AppStrings.cheese,
    AppStrings.imported,
    AppStrings.bestOffers,
  ];

  FilterChipsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Wrap(
        spacing: 5.0,
        children: List.generate(filters.length, (index) {
          final isSelected = index == selectedIndex;

          return FilterChip(
            label: Text(
              filters[index],
              style: TextStyle(
                color: isSelected ? Color(0xFF7CA0B1) : Color(0xFF0E323D),
                fontWeight: FontWeight.w500,
              ),
            ),
            selected: isSelected,
            onSelected: (_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(filters[index]),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            selectedColor: Colors.blue[50],
            backgroundColor: Colors.grey[200],
            shape: StadiumBorder(
              side: BorderSide(
                color: isSelected ? Colors.blue : Colors.transparent,
              ),
            ),
            checkmarkColor: Colors.blue,
          );
        }),
      ),
    );
  }
}
