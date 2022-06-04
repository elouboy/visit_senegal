import 'package:freezed_annotation/freezed_annotation.dart';

part 'region.freezed.dart';
part 'region.g.dart';



@freezed
class Region with _$Region{
  factory Region({
    required String id,
    final String? name,
    final String? superfie,
    final String? site,
    final String? image,
  }) = _Region;
  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}