// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      lastUpdatedEpoch: json['last_updated_epoch'] as int?,
      lastUpdated: json['last_updated'] as String?,
      tempC: json['temp_c'] as int?,
      tempF: json['temp_f'] as int?,
      isDay: json['is_day'] as int?,
      condition: json['condition'] == null
          ? null
          : Condition.fromJson(json['condition'] as Map<String, dynamic>),
      windMph: (json['wind_mph'] as num?)?.toDouble(),
      windKph: (json['wind_kph'] as num?)?.toDouble(),
      windDegree: json['wind_degree'] as int?,
      windDir: json['wind_dir'] as String?,
      pressureMb: json['pressure_mb'] as int?,
      pressureIn: (json['pressure_in'] as num?)?.toDouble(),
      precipMm: json['precip_mm'] as int?,
      precipIn: json['precip_in'] as int?,
      humidity: json['humidity'] as int?,
      cloud: json['cloud'] as int?,
      feelslikeC: (json['feelslike_c'] as num?)?.toDouble(),
      feelslikeF: (json['feelslike_f'] as num?)?.toDouble(),
      visKm: json['vis_km'] as int?,
      visMiles: json['vis_miles'] as int?,
      uv: json['uv'] as int?,
      gustMph: (json['gust_mph'] as num?)?.toDouble(),
      gustKph: (json['gust_kph'] as num?)?.toDouble(),
      airQuality: json['air_quality'] == null
          ? null
          : AirQuality.fromJson(json['air_quality'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'last_updated_epoch': instance.lastUpdatedEpoch,
      'last_updated': instance.lastUpdated,
      'temp_c': instance.tempC,
      'temp_f': instance.tempF,
      'is_day': instance.isDay,
      'condition': instance.condition,
      'wind_mph': instance.windMph,
      'wind_kph': instance.windKph,
      'wind_degree': instance.windDegree,
      'wind_dir': instance.windDir,
      'pressure_mb': instance.pressureMb,
      'pressure_in': instance.pressureIn,
      'precip_mm': instance.precipMm,
      'precip_in': instance.precipIn,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'feelslike_c': instance.feelslikeC,
      'feelslike_f': instance.feelslikeF,
      'vis_km': instance.visKm,
      'vis_miles': instance.visMiles,
      'uv': instance.uv,
      'gust_mph': instance.gustMph,
      'gust_kph': instance.gustKph,
      'air_quality': instance.airQuality,
    };
