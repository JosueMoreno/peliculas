// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'now_playing_response.freezed.dart';
part 'now_playing_response.g.dart';

@freezed
class NowPlaying with _$NowPlaying {
  const factory NowPlaying({
    Dates? dates,
    int? page,
    List<Result>? results,
    int? total_pages,
    int? total_results,
  }) = _NowPlaying;

  factory NowPlaying.fromJson(Map<String, Object?> json) =>
      _$NowPlayingFromJson(json);
}

@freezed
class Dates with _$Dates {
  const factory Dates({
    DateTime? maximum,
    DateTime? minimum,
  }) = _Dates;

  factory Dates.fromJson(Map<String, Object?> json) => _$DatesFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    bool? adult,
    String? backdrop_path,
    List<int>? genre_ids,
    int? id,
    String? original_language,
    String? original_title,
    String? overview,
    double? popularity,
    String? poster_path,
    DateTime? release_date,
    String? title,
    bool? video,
    double? vote_average,
    int? vote_count,
  }) = _Result;

  factory Result.fromJson(Map<String, Object?> json) => _$ResultFromJson(json);
}
