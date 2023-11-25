class Project {
  final int id;
  final String caption;
  final String title;
  final bool isBookmarked;
  final String imageFileName;

  const Project({
    required this.id,
    required this.caption,
    required this.title,
    required this.isBookmarked,
    required this.imageFileName,
  });
}

const List<Project> project = [
  Project(
    id: 0,
    title: 'Lorem ipsum dolor sit amet',
    caption: 'Car Platform',
    isBookmarked: false,
    imageFileName: 'assets/images/website1.jpg',
  ),
  Project(
    id: 1,
    title: 'Lorem ipsum dolor sit amet',
    caption: 'GYM Store',
    isBookmarked: false,
    imageFileName: 'assets/images/website2.jpg',
  ),
  Project(
    id: 2,
    title: 'Lorem ipsum dolor sit amet',
    caption: 'TWS Platform',
    isBookmarked: true,
    imageFileName: 'assets/images/website3.jpg',
  ),
  Project(
    id: 3,
    title: 'Lorem ipsum dolor sit amet',
    caption: 'B.E.C.A Company',
    isBookmarked: true,
    imageFileName: 'assets/images/website4.jpg',
  ),
  Project(
    id: 4,
    title: 'Lorem ipsum dolor sit amet',
    caption: "Big Bites Food's",
    isBookmarked: true,
    imageFileName: 'assets/images/website5.jpg',
  ),
];
