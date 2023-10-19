class Course {
  String name;
  double completedPercentage;
  String author;
  String thumbnail;

  Course({
    required this.author,
    required this.completedPercentage,
    required this.name,
    required this.thumbnail,
  });
}

List<Course> courses = [
  Course(
    author: "Lakshy Yadav",
    completedPercentage: .75,
    name: "Flutter UI",
    thumbnail: "assets/icons/flutter.jpg",
  ),
  Course(
    author: "Lakshy Yadav",
    completedPercentage: .60,
    name: "React UI",
    thumbnail: "assets/icons/react.jpg",
  ),
  Course(
    author: "Lakshy yadav",
    completedPercentage: .75,
    name: "Node UI",
    thumbnail: "assets/icons/node.png",
  ),
  Course(
    author: "Lakshy yadav",
    completedPercentage: .75,
    name: "Flutter Novice to Ninja",
    thumbnail: "assets/icons/flutter.jpg",
  ),
  Course(
    author: "Lakshy yadav",
    completedPercentage: .60,
    name: "React UI",
    thumbnail: "assets/icons/react.jpg",
  ),
  Course(
    author: "Lakshy yadav",
    completedPercentage: .75,
    name: "Node UI",
    thumbnail: "assets/icons/node.png",
  ),
];
