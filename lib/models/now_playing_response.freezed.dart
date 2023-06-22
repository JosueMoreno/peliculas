// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'now_playing_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NowPlaying _$NowPlayingFromJson(Map<String, dynamic> json) {
  return _NowPlaying.fromJson(json);
}

/// @nodoc
mixin _$NowPlaying {
  Map<String, String>? get dates => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  List<Result>? get results => throw _privateConstructorUsedError;
  int? get total_pages => throw _privateConstructorUsedError;
  int? get total_results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NowPlayingCopyWith<NowPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingCopyWith<$Res> {
  factory $NowPlayingCopyWith(
          NowPlaying value, $Res Function(NowPlaying) then) =
      _$NowPlayingCopyWithImpl<$Res, NowPlaying>;
  @useResult
  $Res call(
      {Map<String, String>? dates,
      int? page,
      List<Result>? results,
      int? total_pages,
      int? total_results});
}

/// @nodoc
class _$NowPlayingCopyWithImpl<$Res, $Val extends NowPlaying>
    implements $NowPlayingCopyWith<$Res> {
  _$NowPlayingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? page = freezed,
    Object? results = freezed,
    Object? total_pages = freezed,
    Object? total_results = freezed,
  }) {
    return _then(_value.copyWith(
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
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
abstract class _$$_NowPlayingCopyWith<$Res>
    implements $NowPlayingCopyWith<$Res> {
  factory _$$_NowPlayingCopyWith(
          _$_NowPlaying value, $Res Function(_$_NowPlaying) then) =
      __$$_NowPlayingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, String>? dates,
      int? page,
      List<Result>? results,
      int? total_pages,
      int? total_results});
}

/// @nodoc
class __$$_NowPlayingCopyWithImpl<$Res>
    extends _$NowPlayingCopyWithImpl<$Res, _$_NowPlaying>
    implements _$$_NowPlayingCopyWith<$Res> {
  __$$_NowPlayingCopyWithImpl(
      _$_NowPlaying _value, $Res Function(_$_NowPlaying) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? page = freezed,
    Object? results = freezed,
    Object? total_pages = freezed,
    Object? total_results = freezed,
  }) {
    return _then(_$_NowPlaying(
      dates: freezed == dates
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
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
class _$_NowPlaying with DiagnosticableTreeMixin implements _NowPlaying {
  const _$_NowPlaying(
      {final Map<String, String>? dates,
      this.page,
      final List<Result>? results,
      this.total_pages,
      this.total_results})
      : _dates = dates,
        _results = results;

  factory _$_NowPlaying.fromJson(Map<String, dynamic> json) =>
      _$$_NowPlayingFromJson(json);

  final Map<String, String>? _dates;
  @override
  Map<String, String>? get dates {
    final value = _dates;
    if (value == null) return null;
    if (_dates is EqualUnmodifiableMapView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NowPlaying(dates: $dates, page: $page, results: $results, total_pages: $total_pages, total_results: $total_results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NowPlaying'))
      ..add(DiagnosticsProperty('dates', dates))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('results', results))
      ..add(DiagnosticsProperty('total_pages', total_pages))
      ..add(DiagnosticsProperty('total_results', total_results));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NowPlaying &&
            const DeepCollectionEquality().equals(other._dates, _dates) &&
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
      const DeepCollectionEquality().hash(_dates),
      page,
      const DeepCollectionEquality().hash(_results),
      total_pages,
      total_results);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NowPlayingCopyWith<_$_NowPlaying> get copyWith =>
      __$$_NowPlayingCopyWithImpl<_$_NowPlaying>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NowPlayingToJson(
      this,
    );
  }
}

abstract class _NowPlaying implements NowPlaying {
  const factory _NowPlaying(
      {final Map<String, String>? dates,
      final int? page,
      final List<Result>? results,
      final int? total_pages,
      final int? total_results}) = _$_NowPlaying;

  factory _NowPlaying.fromJson(Map<String, dynamic> json) =
      _$_NowPlaying.fromJson;

  @override
  Map<String, String>? get dates;
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
  _$$_NowPlayingCopyWith<_$_NowPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  bool? get adult => throw _privateConstructorUsedError;
  String? get backdrop_path => throw _privateConstructorUsedError;
  List<int>? get genre_ids => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get original_language => throw _privateConstructorUsedError;
  String? get original_title => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  String? get poster_path => throw _privateConstructorUsedError;
  String? get release_date => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get video => throw _privateConstructorUsedError;
  double? get vote_average => throw _privateConstructorUsedError;
  int? get vote_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {bool? adult,
      String? backdrop_path,
      List<int>? genre_ids,
      int? id,
      String? original_language,
      String? original_title,
      String? overview,
      double? popularity,
      String? poster_path,
      String? release_date,
      String? title,
      bool? video,
      double? vote_average,
      int? vote_count});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdrop_path = freezed,
    Object? genre_ids = freezed,
    Object? id = freezed,
    Object? original_language = freezed,
    Object? original_title = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? poster_path = freezed,
    Object? release_date = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? vote_average = freezed,
    Object? vote_count = freezed,
  }) {
    return _then(_value.copyWith(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdrop_path: freezed == backdrop_path
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String?,
      genre_ids: freezed == genre_ids
          ? _value.genre_ids
          : genre_ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      original_language: freezed == original_language
          ? _value.original_language
          : original_language // ignore: cast_nullable_to_non_nullable
              as String?,
      original_title: freezed == original_title
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      poster_path: freezed == poster_path
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      release_date: freezed == release_date
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      vote_average: freezed == vote_average
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as double?,
      vote_count: freezed == vote_count
          ? _value.vote_count
          : vote_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? adult,
      String? backdrop_path,
      List<int>? genre_ids,
      int? id,
      String? original_language,
      String? original_title,
      String? overview,
      double? popularity,
      String? poster_path,
      String? release_date,
      String? title,
      bool? video,
      double? vote_average,
      int? vote_count});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdrop_path = freezed,
    Object? genre_ids = freezed,
    Object? id = freezed,
    Object? original_language = freezed,
    Object? original_title = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? poster_path = freezed,
    Object? release_date = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? vote_average = freezed,
    Object? vote_count = freezed,
  }) {
    return _then(_$_Result(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdrop_path: freezed == backdrop_path
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String?,
      genre_ids: freezed == genre_ids
          ? _value._genre_ids
          : genre_ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      original_language: freezed == original_language
          ? _value.original_language
          : original_language // ignore: cast_nullable_to_non_nullable
              as String?,
      original_title: freezed == original_title
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      poster_path: freezed == poster_path
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      release_date: freezed == release_date
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      vote_average: freezed == vote_average
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as double?,
      vote_count: freezed == vote_count
          ? _value.vote_count
          : vote_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result with DiagnosticableTreeMixin implements _Result {
  const _$_Result(
      {this.adult,
      this.backdrop_path,
      final List<int>? genre_ids,
      this.id,
      this.original_language,
      this.original_title,
      this.overview,
      this.popularity,
      this.poster_path,
      this.release_date,
      this.title,
      this.video,
      this.vote_average,
      this.vote_count})
      : _genre_ids = genre_ids;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final bool? adult;
  @override
  final String? backdrop_path;
  final List<int>? _genre_ids;
  @override
  List<int>? get genre_ids {
    final value = _genre_ids;
    if (value == null) return null;
    if (_genre_ids is EqualUnmodifiableListView) return _genre_ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? id;
  @override
  final String? original_language;
  @override
  final String? original_title;
  @override
  final String? overview;
  @override
  final double? popularity;
  @override
  final String? poster_path;
  @override
  final String? release_date;
  @override
  final String? title;
  @override
  final bool? video;
  @override
  final double? vote_average;
  @override
  final int? vote_count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Result(adult: $adult, backdrop_path: $backdrop_path, genre_ids: $genre_ids, id: $id, original_language: $original_language, original_title: $original_title, overview: $overview, popularity: $popularity, poster_path: $poster_path, release_date: $release_date, title: $title, video: $video, vote_average: $vote_average, vote_count: $vote_count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Result'))
      ..add(DiagnosticsProperty('adult', adult))
      ..add(DiagnosticsProperty('backdrop_path', backdrop_path))
      ..add(DiagnosticsProperty('genre_ids', genre_ids))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('original_language', original_language))
      ..add(DiagnosticsProperty('original_title', original_title))
      ..add(DiagnosticsProperty('overview', overview))
      ..add(DiagnosticsProperty('popularity', popularity))
      ..add(DiagnosticsProperty('poster_path', poster_path))
      ..add(DiagnosticsProperty('release_date', release_date))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('video', video))
      ..add(DiagnosticsProperty('vote_average', vote_average))
      ..add(DiagnosticsProperty('vote_count', vote_count));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdrop_path, backdrop_path) ||
                other.backdrop_path == backdrop_path) &&
            const DeepCollectionEquality()
                .equals(other._genre_ids, _genre_ids) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.original_language, original_language) ||
                other.original_language == original_language) &&
            (identical(other.original_title, original_title) ||
                other.original_title == original_title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.poster_path, poster_path) ||
                other.poster_path == poster_path) &&
            (identical(other.release_date, release_date) ||
                other.release_date == release_date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.vote_average, vote_average) ||
                other.vote_average == vote_average) &&
            (identical(other.vote_count, vote_count) ||
                other.vote_count == vote_count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      backdrop_path,
      const DeepCollectionEquality().hash(_genre_ids),
      id,
      original_language,
      original_title,
      overview,
      popularity,
      poster_path,
      release_date,
      title,
      video,
      vote_average,
      vote_count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final bool? adult,
      final String? backdrop_path,
      final List<int>? genre_ids,
      final int? id,
      final String? original_language,
      final String? original_title,
      final String? overview,
      final double? popularity,
      final String? poster_path,
      final String? release_date,
      final String? title,
      final bool? video,
      final double? vote_average,
      final int? vote_count}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  bool? get adult;
  @override
  String? get backdrop_path;
  @override
  List<int>? get genre_ids;
  @override
  int? get id;
  @override
  String? get original_language;
  @override
  String? get original_title;
  @override
  String? get overview;
  @override
  double? get popularity;
  @override
  String? get poster_path;
  @override
  String? get release_date;
  @override
  String? get title;
  @override
  bool? get video;
  @override
  double? get vote_average;
  @override
  int? get vote_count;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}
