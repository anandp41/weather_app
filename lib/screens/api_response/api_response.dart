import 'package:json_annotation/json_annotation.dart';

import 'current.dart';
import 'location.dart';

part 'api_response.g.dart';

@JsonSerializable()
class ApiResponse {
  Location? location;
  Current? current;

  ApiResponse({this.location, this.current});

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return _$ApiResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}
