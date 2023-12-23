import '../domain/entity.dart';

class NasaModel extends NasaEntity {
  NasaModel({
    required super.copyright,
    required super.date,
    required super.explanation,
    required super.hdUrl,
    required super.mediaType,
    required super.serviceVersion,
    required super.title,
    required super.url,
  });

  factory NasaModel.fromJson(Map<String, dynamic> json) => NasaModel(
        copyright: json['copyright'],
        date: json['date'],
        explanation: json['explanation'],
        hdUrl: json['hdurl'],
        mediaType: json['media_type'],
        serviceVersion: json['service_version'],
        title: json['title'],
        url: json['url'],
      );
}
