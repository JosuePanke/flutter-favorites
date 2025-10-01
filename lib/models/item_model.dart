class Item {
  final String id;
  final String title;
  final String image;
  bool isFavorite;

  Item({
    required this.id,
    required this.title,
    required this.image,
    this.isFavorite = false,
  });
}
