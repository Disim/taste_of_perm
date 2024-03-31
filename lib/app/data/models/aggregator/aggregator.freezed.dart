// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aggregator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Aggregator _$AggregatorFromJson(Map<String, dynamic> json) {
  return Aaggregator.fromJson(json);
}

/// @nodoc
mixin _$Aggregator {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AggregatorCopyWith<Aggregator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AggregatorCopyWith<$Res> {
  factory $AggregatorCopyWith(
          Aggregator value, $Res Function(Aggregator) then) =
      _$AggregatorCopyWithImpl<$Res, Aggregator>;
  @useResult
  $Res call({String name, String url, String image});
}

/// @nodoc
class _$AggregatorCopyWithImpl<$Res, $Val extends Aggregator>
    implements $AggregatorCopyWith<$Res> {
  _$AggregatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AaggregatorImplCopyWith<$Res>
    implements $AggregatorCopyWith<$Res> {
  factory _$$AaggregatorImplCopyWith(
          _$AaggregatorImpl value, $Res Function(_$AaggregatorImpl) then) =
      __$$AaggregatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url, String image});
}

/// @nodoc
class __$$AaggregatorImplCopyWithImpl<$Res>
    extends _$AggregatorCopyWithImpl<$Res, _$AaggregatorImpl>
    implements _$$AaggregatorImplCopyWith<$Res> {
  __$$AaggregatorImplCopyWithImpl(
      _$AaggregatorImpl _value, $Res Function(_$AaggregatorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? image = null,
  }) {
    return _then(_$AaggregatorImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AaggregatorImpl implements Aaggregator {
  _$AaggregatorImpl(
      {required this.name, required this.url, required this.image});

  factory _$AaggregatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AaggregatorImplFromJson(json);

  @override
  final String name;
  @override
  final String url;
  @override
  final String image;

  @override
  String toString() {
    return 'Aggregator(name: $name, url: $url, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AaggregatorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AaggregatorImplCopyWith<_$AaggregatorImpl> get copyWith =>
      __$$AaggregatorImplCopyWithImpl<_$AaggregatorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AaggregatorImplToJson(
      this,
    );
  }
}

abstract class Aaggregator implements Aggregator {
  factory Aaggregator(
      {required final String name,
      required final String url,
      required final String image}) = _$AaggregatorImpl;

  factory Aaggregator.fromJson(Map<String, dynamic> json) =
      _$AaggregatorImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$AaggregatorImplCopyWith<_$AaggregatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
