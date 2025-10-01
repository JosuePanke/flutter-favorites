import 'package:flutter/material.dart';
import 'package:flutter_deber_1/models/item_model.dart';

class FavoritesProvider with ChangeNotifier {
  final List<Item> _items = [
    Item(
      id: '0',
      title: 'Elemento 0',
      image: 'assets/images/animales-marinos.jpg',
    ),
    Item(id: '1', title: 'Elemento 1', image: 'assets/images/turtle.jpg'),
    Item(
      id: '2',
      title: 'Elemento 2',
      image: 'assets/images/perro_vacaciones.jpg',
    ),
    Item(id: '3', title: 'Elemento 3', image: 'assets/images/sushi.jpg'),

    Item(
      id: '4',
      title: 'Elemento 4',
      image: 'assets/images/paisaje-nevado.jpg',
    ),

    Item(id: '5', title: 'Elemento 5', image: 'assets/images/cena.jpg'),
  ];

  List<Item> get items => _items;

  List<Item> get favoriteItems =>
      _items.where((item) => item.isFavorite).toList();

  void toggleFavorite(String id) {
    final index = _items.indexWhere((item) => item.id == id);
    if (index != -1) {
      _items[index].isFavorite = !_items[index].isFavorite;
      notifyListeners();
    }
  }
}
