// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'site.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Site _$SiteFromJson(Map<String, dynamic> json) {
  return _Site.fromJson(json);
}

/// @nodoc
mixin _$Site {
  String get name => throw _privateConstructorUsedError;
  String? get image1 => throw _privateConstructorUsedError;
  String? get image2 => throw _privateConstructorUsedError;
  String? get image3 => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SiteCopyWith<Site> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteCopyWith<$Res> {
  factory $SiteCopyWith(Site value, $Res Function(Site) then) =
      _$SiteCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String? image1,
      String? image2,
      String? image3,
      String? description});
}

/// @nodoc
class _$SiteCopyWithImpl<$Res> implements $SiteCopyWith<$Res> {
  _$SiteCopyWithImpl(this._value, this._then);

  final Site _value;
  // ignore: unused_field
  final $Res Function(Site) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? image1 = freezed,
    Object? image2 = freezed,
    Object? image3 = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image1: image1 == freezed
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
      image2: image2 == freezed
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as String?,
      image3: image3 == freezed
          ? _value.image3
          : image3 // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SiteCopyWith<$Res> implements $SiteCopyWith<$Res> {
  factory _$$_SiteCopyWith(_$_Site value, $Res Function(_$_Site) then) =
      __$$_SiteCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String? image1,
      String? image2,
      String? image3,
      String? description});
}

/// @nodoc
class __$$_SiteCopyWithImpl<$Res> extends _$SiteCopyWithImpl<$Res>
    implements _$$_SiteCopyWith<$Res> {
  __$$_SiteCopyWithImpl(_$_Site _value, $Res Function(_$_Site) _then)
      : super(_value, (v) => _then(v as _$_Site));

  @override
  _$_Site get _value => super._value as _$_Site;

  @override
  $Res call({
    Object? name = freezed,
    Object? image1 = freezed,
    Object? image2 = freezed,
    Object? image3 = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Site(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image1: image1 == freezed
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
      image2: image2 == freezed
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as String?,
      image3: image3 == freezed
          ? _value.image3
          : image3 // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Site implements _Site {
  _$_Site(
      {required this.name,
      this.image1,
      this.image2,
      this.image3,
      this.description});

  factory _$_Site.fromJson(Map<String, dynamic> json) => _$$_SiteFromJson(json);

  @override
  final String name;
  @override
  final String? image1;
  @override
  final String? image2;
  @override
  final String? image3;
  @override
  final String? description;

  @override
  String toString() {
    return 'Site(name: $name, image1: $image1, image2: $image2, image3: $image3, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Site &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image1, image1) &&
            const DeepCollectionEquality().equals(other.image2, image2) &&
            const DeepCollectionEquality().equals(other.image3, image3) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image1),
      const DeepCollectionEquality().hash(image2),
      const DeepCollectionEquality().hash(image3),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_SiteCopyWith<_$_Site> get copyWith =>
      __$$_SiteCopyWithImpl<_$_Site>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SiteToJson(this);
  }
}

abstract class _Site implements Site {
  factory _Site(
      {required final String name,
      final String? image1,
      final String? image2,
      final String? image3,
      final String? description}) = _$_Site;

  factory _Site.fromJson(Map<String, dynamic> json) = _$_Site.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get image1 => throw _privateConstructorUsedError;
  @override
  String? get image2 => throw _privateConstructorUsedError;
  @override
  String? get image3 => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SiteCopyWith<_$_Site> get copyWith => throw _privateConstructorUsedError;
}
