class Project {
  final int id;
  final String caption;
  final String title;
  final String icon1;
  final String icon2;
  final String icon3;
  final String icon4;
  final bool isBookmarked;
  final String imageFileName;

  const Project({
    required this.id,
    required this.caption,
    required this.title,
    required this.icon1,
    required this.icon2,
    required this.icon3,
    required this.icon4,
    required this.isBookmarked,
    required this.imageFileName,
  });
}

const List<Project> project = [
  Project(
    id: 0,
    title: 'Lorem ipsum dolor sit ametLorem ipsum dolor sit amet',
    caption: 'Car Platform',
    icon1: 'assets/frameworks/javascript.svg',
    icon2: 'assets/frameworks/html5.svg',
    icon3: 'assets/frameworks/mariadb.svg',
    icon4: '',

    isBookmarked: false,
    imageFileName: 'assets/images/website1.jpg',
  ),
  Project(
    id: 1,
    title: 'Lorem ipsum dolor sit amet',
    caption: 'GYM Store',
    icon1: 'assets/frameworks/java.svg',
    icon2: 'assets/frameworks/flutter.svg',
    icon3: 'assets/frameworks/firebase.svg',
    icon4: '',
    isBookmarked: false,
    imageFileName: 'assets/images/website2.jpg',
  ),
  Project(
    id: 2,
    title: 'Lorem ipsum dolor sit amet',
    caption: 'TWS Platform',
    icon1: 'assets/frameworks/kotlin.svg',
    icon2: 'assets/frameworks/vuejs.svg',
    icon3: 'assets/frameworks/postgresql.svg',
    icon4: '',
    isBookmarked: true,
    imageFileName: 'assets/images/website3.jpg',
  ),
  Project(
    id: 3,
    title: 'Lorem ipsum dolor sit amet',
    caption: 'B.E.C.A Company',
    icon1: 'assets/frameworks/react.svg',
    icon2: 'assets/frameworks/nodejs.svg',
    icon3: 'assets/frameworks/mysql.svg',
    icon4: '',
    isBookmarked: true,
    imageFileName: 'assets/images/website4.jpg',
  ),
  Project(
    id: 4,
    title: 'Lorem ipsum dolor sit amet',
    caption: "Big Bites Food's",
    icon1: 'assets/frameworks/net.svg',
    icon2: 'assets/frameworks/django.svg',
    icon3: 'assets/frameworks/bootstrap.svg',
    icon4: '',
    isBookmarked: true,
    imageFileName: 'assets/images/website5.jpg',
  ),
];
