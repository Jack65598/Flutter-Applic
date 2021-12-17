class DataModle {
  String name;
  String img;
  int price;
  int people;
  int stars;
  String description;
  String location;

  DataModle({
    required this.name,
    required this.img,
    required this.price,
    required this.people,
    required this.stars,
    required this.description,
    required this.location,
  });
  factory DataModle.fromJsaon(Map<String, dynamic> jason) {
    return DataModle(
        name: jason["name"],
        img: jason["img"],
        price: jason["price"],
        people: jason["people"],
        stars: jason["stars"],
        description: jason["description"],
        location: jason["location"]);
  }
}
