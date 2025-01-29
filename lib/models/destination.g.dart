// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinationAPI _$DestinationAPIFromJson(Map<String, dynamic> json) =>
    DestinationAPI(
      id: json['_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      rating: (json['rating'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$DestinationAPIToJson(DestinationAPI instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'rating': instance.rating,
      'imageUrl': instance.imageUrl,
      'location': instance.location,
    };
