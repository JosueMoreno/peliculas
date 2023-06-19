// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credits_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Credits _$CreditsFromJson(Map<String, dynamic> json) {
  return _Credits.fromJson(json);
}

/// @nodoc
mixin _$Credits {
  int? get id => throw _privateConstructorUsedError;
  List<Cast>? get cast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditsCopyWith<Credits> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditsCopyWith<$Res> {
  factory $CreditsCopyWith(Credits value, $Res Function(Credits) then) =
      _$CreditsCopyWithImpl<$Res, Credits>;
  @useResult
  $Res call({int? id, List<Cast>? cast});
}

/// @nodoc
class _$CreditsCopyWithImpl<$Res, $Val extends Credits>
    implements $CreditsCopyWith<$Res> {
  _$CreditsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cast = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: freezed == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreditsCopyWith<$Res> implements $CreditsCopyWith<$Res> {
  factory _$$_CreditsCopyWith(
          _$_Credits value, $Res Function(_$_Credits) then) =
      __$$_CreditsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, List<Cast>? cast});
}

/// @nodoc
class __$$_CreditsCopyWithImpl<$Res>
    extends _$CreditsCopyWithImpl<$Res, _$_Credits>
    implements _$$_CreditsCopyWith<$Res> {
  __$$_CreditsCopyWithImpl(_$_Credits _value, $Res Function(_$_Credits) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cast = freezed,
  }) {
    return _then(_$_Credits(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: freezed == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Credits implements _Credits {
  const _$_Credits({this.id, final List<Cast>? cast}) : _cast = cast;

  factory _$_Credits.fromJson(Map<String, dynamic> json) =>
      _$$_CreditsFromJson(json);

  @override
  final int? id;
  final List<Cast>? _cast;
  @override
  List<Cast>? get cast {
    final value = _cast;
    if (value == null) return null;
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Credits(id: $id, cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Credits &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._cast, _cast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_cast));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditsCopyWith<_$_Credits> get copyWith =>
      __$$_CreditsCopyWithImpl<_$_Credits>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreditsToJson(
      this,
    );
  }
}

abstract class _Credits implements Credits {
  const factory _Credits({final int? id, final List<Cast>? cast}) = _$_Credits;

  factory _Credits.fromJson(Map<String, dynamic> json) = _$_Credits.fromJson;

  @override
  int? get id;
  @override
  List<Cast>? get cast;
  @override
  @JsonKey(ignore: true)
  _$$_CreditsCopyWith<_$_Credits> get copyWith =>
      throw _privateConstructorUsedError;
}

Cast _$CastFromJson(Map<String, dynamic> json) {
  return _Cast.fromJson(json);
}

/// @nodoc
mixin _$Cast {
  bool? get adult => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get known_for_department => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get original_name => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  String? get profile_path => throw _privateConstructorUsedError;
  int? get cast_id => throw _privateConstructorUsedError;
  String? get character => throw _privateConstructorUsedError;
  String? get credit_id => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastCopyWith<Cast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res, Cast>;
  @useResult
  $Res call(
      {bool? adult,
      int? gender,
      int? id,
      String? known_for_department,
      String? name,
      String? original_name,
      double? popularity,
      String? profile_path,
      int? cast_id,
      String? character,
      String? credit_id,
      int? order});
}

/// @nodoc
class _$CastCopyWithImpl<$Res, $Val extends Cast>
    implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? gender = freezed,
    Object? id = freezed,
    Object? known_for_department = freezed,
    Object? name = freezed,
    Object? original_name = freezed,
    Object? popularity = freezed,
    Object? profile_path = freezed,
    Object? cast_id = freezed,
    Object? character = freezed,
    Object? credit_id = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      known_for_department: freezed == known_for_department
          ? _value.known_for_department
          : known_for_department // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      original_name: freezed == original_name
          ? _value.original_name
          : original_name // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      profile_path: freezed == profile_path
          ? _value.profile_path
          : profile_path // ignore: cast_nullable_to_non_nullable
              as String?,
      cast_id: freezed == cast_id
          ? _value.cast_id
          : cast_id // ignore: cast_nullable_to_non_nullable
              as int?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      credit_id: freezed == credit_id
          ? _value.credit_id
          : credit_id // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$$_CastCopyWith(_$_Cast value, $Res Function(_$_Cast) then) =
      __$$_CastCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? adult,
      int? gender,
      int? id,
      String? known_for_department,
      String? name,
      String? original_name,
      double? popularity,
      String? profile_path,
      int? cast_id,
      String? character,
      String? credit_id,
      int? order});
}

/// @nodoc
class __$$_CastCopyWithImpl<$Res> extends _$CastCopyWithImpl<$Res, _$_Cast>
    implements _$$_CastCopyWith<$Res> {
  __$$_CastCopyWithImpl(_$_Cast _value, $Res Function(_$_Cast) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? gender = freezed,
    Object? id = freezed,
    Object? known_for_department = freezed,
    Object? name = freezed,
    Object? original_name = freezed,
    Object? popularity = freezed,
    Object? profile_path = freezed,
    Object? cast_id = freezed,
    Object? character = freezed,
    Object? credit_id = freezed,
    Object? order = freezed,
  }) {
    return _then(_$_Cast(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      known_for_department: freezed == known_for_department
          ? _value.known_for_department
          : known_for_department // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      original_name: freezed == original_name
          ? _value.original_name
          : original_name // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      profile_path: freezed == profile_path
          ? _value.profile_path
          : profile_path // ignore: cast_nullable_to_non_nullable
              as String?,
      cast_id: freezed == cast_id
          ? _value.cast_id
          : cast_id // ignore: cast_nullable_to_non_nullable
              as int?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      credit_id: freezed == credit_id
          ? _value.credit_id
          : credit_id // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cast implements _Cast {
  const _$_Cast(
      {this.adult,
      this.gender,
      this.id,
      this.known_for_department,
      this.name,
      this.original_name,
      this.popularity,
      this.profile_path,
      this.cast_id,
      this.character,
      this.credit_id,
      this.order});

  factory _$_Cast.fromJson(Map<String, dynamic> json) => _$$_CastFromJson(json);

  @override
  final bool? adult;
  @override
  final int? gender;
  @override
  final int? id;
  @override
  final String? known_for_department;
  @override
  final String? name;
  @override
  final String? original_name;
  @override
  final double? popularity;
  @override
  final String? profile_path;
  @override
  final int? cast_id;
  @override
  final String? character;
  @override
  final String? credit_id;
  @override
  final int? order;

  @override
  String toString() {
    return 'Cast(adult: $adult, gender: $gender, id: $id, known_for_department: $known_for_department, name: $name, original_name: $original_name, popularity: $popularity, profile_path: $profile_path, cast_id: $cast_id, character: $character, credit_id: $credit_id, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cast &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.known_for_department, known_for_department) ||
                other.known_for_department == known_for_department) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.original_name, original_name) ||
                other.original_name == original_name) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.profile_path, profile_path) ||
                other.profile_path == profile_path) &&
            (identical(other.cast_id, cast_id) || other.cast_id == cast_id) &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.credit_id, credit_id) ||
                other.credit_id == credit_id) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      gender,
      id,
      known_for_department,
      name,
      original_name,
      popularity,
      profile_path,
      cast_id,
      character,
      credit_id,
      order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CastCopyWith<_$_Cast> get copyWith =>
      __$$_CastCopyWithImpl<_$_Cast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CastToJson(
      this,
    );
  }
}

abstract class _Cast implements Cast {
  const factory _Cast(
      {final bool? adult,
      final int? gender,
      final int? id,
      final String? known_for_department,
      final String? name,
      final String? original_name,
      final double? popularity,
      final String? profile_path,
      final int? cast_id,
      final String? character,
      final String? credit_id,
      final int? order}) = _$_Cast;

  factory _Cast.fromJson(Map<String, dynamic> json) = _$_Cast.fromJson;

  @override
  bool? get adult;
  @override
  int? get gender;
  @override
  int? get id;
  @override
  String? get known_for_department;
  @override
  String? get name;
  @override
  String? get original_name;
  @override
  double? get popularity;
  @override
  String? get profile_path;
  @override
  int? get cast_id;
  @override
  String? get character;
  @override
  String? get credit_id;
  @override
  int? get order;
  @override
  @JsonKey(ignore: true)
  _$$_CastCopyWith<_$_Cast> get copyWith => throw _privateConstructorUsedError;
}
