class Category {
  final int id;
  final String imageFileName;

  const Category({
    required this.id,
    required this.imageFileName,
  });
}

const List<Category> categories = [
  Category(
    id: 1,
    imageFileName: 'assets/images/website1.jpg',
  ),
  Category(
    id: 2,
    imageFileName: 'assets/images/website2.jpg',
  ),
  Category(
    id: 3,
    imageFileName: 'assets/images/website3.jpg',
  ),
  Category(
    id: 4,
    imageFileName: 'assets/images/website4.jpg',
  ),
  Category(
    id: 5,
    imageFileName: 'assets/images/website5.jpg',
  ),
  Category(
    id: 6,
    imageFileName: 'assets/images/website6.jpg',
  ),
];
