// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) {
  return _SearchResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchResponse {
  int? get page => throw _privateConstructorUsedError;
  List<Result>? get results => throw _privateConstructorUsedError;
  int? get total_pages => throw _privateConstructorUsedError;
  int? get total_results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResponseCopyWith<SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseCopyWith<$Res> {
  factory $SearchResponseCopyWith(
          SearchResponse value, $Res Function(SearchResponse) then) =
      _$SearchResponseCopyWithImpl<$Res, SearchResponse>;
  @useResult
  $Res call(
      {int? page, List<Result>? results, int? total_pages, int? total_results});
}

/// @nodoc
class _$SearchResponseCopyWithImpl<$Res, $Val extends SearchResponse>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? total_pages = freezed,
    Object? total_results = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      total_pages: freezed == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int?,
      total_results: freezed == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchResponseCopyWith<$Res>
    implements $SearchResponseCopyWith<$Res> {
  factory _$$_SearchResponseCopyWith(
          _$_SearchResponse value, $Res Function(_$_SearchResponse) then) =
      __$$_SearchResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page, List<Result>? results, int? total_pages, int? total_results});
}

/// @nodoc
class __$$_SearchResponseCopyWithImpl<$Res>
    extends _$SearchResponseCopyWithImpl<$Res, _$_SearchResponse>
    implements _$$_SearchResponseCopyWith<$Res> {
  __$$_SearchResponseCopyWithImpl(
      _$_SearchResponse _value, $Res Function(_$_SearchResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? total_pages = freezed,
    Object? total_results = freezed,
  }) {
    return _then(_$_SearchResponse(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      total_pages: freezed == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int?,
      total_results: freezed == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResponse implements _SearchResponse {
  const _$_SearchResponse(
      {this.page,
      final List<Result>? results,
      this.total_pages,
      this.total_results})
      : _results = results;

  factory _$_SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResponseFromJson(json);

  @override
  final int? page;
  final List<Result>? _results;
  @override
  List<Result>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? total_pages;
  @override
  final int? total_results;

  @override
  String toString() {
    return 'SearchResponse(page: $page, results: $results, total_pages: $total_pages, total_results: $total_results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResponse &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.total_pages, total_pages) ||
                other.total_pages == total_pages) &&
            (identical(other.total_results, total_results) ||
                other.total_results == total_results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      const DeepCollectionEquality().hash(_results),
      total_pages,
      total_results);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResponseCopyWith<_$_SearchResponse> get copyWith =>
      __$$_SearchResponseCopyWithImpl<_$_SearchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResponseToJson(
      this,
    );
  }
}

abstract class _SearchResponse implements SearchResponse {
  const factory _SearchResponse(
      {final int? page,
      final List<Result>? results,
      final int? total_pages,
      final int? total_results}) = _$_SearchResponse;

  factory _SearchResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchResponse.fromJson;

  @override
  int? get page;
  @override
  List<Result>? get results;
  @override
  int? get total_pages;
  @override
  int? get total_results;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResponseCopyWith<_$_SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
