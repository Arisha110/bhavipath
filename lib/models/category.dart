class Category {
  String thumbnail;
  String name;
  int noOfCourses;
  Category(
      {required this.name, required this.noOfCourses, required this.thumbnail});
}

List<Category> categoryList = [
  Category(
    name: 'Engineering',
    noOfCourses: 35,
    thumbnail: 'android/assets/Group 14.png',
  ),
  Category(
    name: 'Medical',
    noOfCourses: 40,
    thumbnail: 'android/assets/Group 14.png',
  ),
  Category(
    name: 'Law',
    noOfCourses: 56,
    thumbnail: 'android/assets/Group 14.png',
  ),
  Category(
    name: 'Other Courses',
    noOfCourses: 56,
    thumbnail: 'android/assets/Group 14.png',
  ),
];
