class Category {
  String thumbnail;
  String name;
  int noOfCourses;
  Category(
      {required this.name, required this.noOfCourses, required this.thumbnail});
}

List<Category> categoryList = [
  Category(
    name: 'Development',
    noOfCourses: 35,
    thumbnail:
        'https//banner2.cleanpng.com/20180624/sfz/kisspng-laptop-display-device-multimedia-laptop-mockup-5b2f1c0021b2b9.715482301529814016138.jpg',
  ),
  Category(
    name: 'Designing',
    noOfCourses: 40,
    thumbnail:
        'https://banner2.cleanpng.com/20180624/sfz/kisspng-laptop-display-device-multimedia-laptop-mockup-5b2f1c0021b2b9.715482301529814016138.jpg',
  ),
  Category(
    name: 'Programming',
    noOfCourses: 56,
    thumbnail:
        'https://banner2.cleanpng.com/20180624/sfz/kisspng-laptop-display-device-multimedia-laptop-mockup-5b2f1c0021b2b9.715482301529814016138.jpg',
  ),
];
