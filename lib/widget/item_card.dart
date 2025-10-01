import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_deber_1/models/item_model.dart';
import 'package:flutter_deber_1/providers/favorites_provider.dart';

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                image: DecorationImage(
                  image: AssetImage(item.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(
                    item.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: item.isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {
                    Provider.of<FavoritesProvider>(
                      context,
                      listen: false,
                    ).toggleFavorite(item.id);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
