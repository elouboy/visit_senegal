import 'package:freezed_annotation/freezed_annotation.dart';

part 'site.freezed.dart';
part 'site.g.dart';


@freezed
class Site with _$Site{
  factory Site({
    required String name,
    final String? image1,
    final String? image2,
    final String? image3,
    final String? description,
  }) = _Site;
  factory Site.fromJson(Map<String, dynamic> json) => _$SiteFromJson(json);
}