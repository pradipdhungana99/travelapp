import 'package:json_annotation/json_annotation.dart';
part '../destination.g.dart';

@JsonSerializable()
class DestinationAPI {
  @JsonKey(name: '_id')
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

  factory DestinationAPI.fromJson(Map<String, dynamic> json) =>
      _$DestinationAPIFromJson(json);
  Map<String, dynamic> toJson() => _$DestinationAPIToJson(this);

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'name': name,
//       'description': description,
//       'rating': rating,
//       'image_url': imageUrl,
//       'location': location,
//     };
//   }
// }
}
