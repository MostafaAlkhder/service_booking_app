class ReviewModel {
  final String user;
  final int rating;
  final String comment;

  ReviewModel(
      {required this.user, required this.rating, required this.comment});

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      user: json['user'],
      rating: json['rating'],
      comment: json['comment'],
    );
  }
}
