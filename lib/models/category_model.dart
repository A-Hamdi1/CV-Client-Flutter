class Category {
  final int id;
  final String title;
  final String imageFileName;

  const Category({
    required this.id,
    required this.title,
    required this.imageFileName,
  });
}

const List<Category> categories = [
  Category(
    id: 1,
    title: 'Technology',
    imageFileName: 'assets/images/website1.jpg',
  ),
  Category(
    id: 2,
    title: 'Cinema',
    imageFileName: 'assets/images/website2.jpg',
  ),
  Category(
    id: 3,
    title: 'Transportation',
    imageFileName: 'assets/images/website3.jpg',
  ),
  Category(
    id: 4,
    title: 'Adventure',
    imageFileName: 'assets/images/website4.jpg',
  ),
  Category(
    id: 5,
    title: 'Artificial Intelligence',
    imageFileName: 'assets/images/website5.jpg',
  ),
  Category(
    id: 6,
    title: 'Economy',
    imageFileName: 'assets/images/website6.jpg',
  ),
];
