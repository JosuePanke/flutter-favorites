import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_deber_1/providers/favorites_provider.dart';
import 'package:flutter_deber_1/widget/item_card.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteItems = Provider.of<FavoritesProvider>(context).favoriteItems;

    if (favoriteItems.isEmpty) {
      return const Center(child: Text('No hay elementos favoritos'));
    }

    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.8,
      ),
      itemCount: favoriteItems.length,
      itemBuilder: (context, index) => ItemCard(item: favoriteItems[index]),
    );
  }
}
