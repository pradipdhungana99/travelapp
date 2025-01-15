class DestinationAPI {
  final String id;
  final String name;
  final String description;
  final double rating;
  final String imageUrl;
  final String location;

  DestinationAPI(
      {required this.id,
      required this.name,
      required this.description,
      required this.rating,
      required this.imageUrl,
      required this.location});

  factory DestinationAPI.fromJson(Map<String, dynamic> json) {
    return DestinationAPI(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        rating: json['rating'],
        imageUrl: json['image_url'],
        location: json['location']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'rating': rating,
      'image_url': imageUrl,
      'location': location,
    };
  }
}
