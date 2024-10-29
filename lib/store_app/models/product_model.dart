class ProductModel {
  final int id;
  final String title;
  final String description;
  final double price;
  final String image;
  final String category;
  final RatingModel rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.image,
      required this.category,
        required this.rating,
      });

  factory ProductModel.fromJson(json) {
    return ProductModel(
      rating: RatingModel.fromJson(json['rating']),
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      image: json['image'],
      category: json['category'],

    );
  }
}

class RatingModel {
  final double rate;
  final double count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(json) {
    return RatingModel(
      rate: json['rate'],
      count: json['count'],
    );
  }
}
