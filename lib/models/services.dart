class ServiceModel {
  final int id;
  final int categoryId;
  final String name;
  final double price;
  final String availability;
  final String image;

  ServiceModel(
      {required this.id,
      required this.categoryId,
      required this.name,
      required this.price,
      required this.availability,
      required this.image});

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
        id: json['id'],
        categoryId: json['categoryId'],
        name: json['name'],
        price: json['price'].toDouble(),
        availability: json['availability'],
        image: json['image']);
  }
}
