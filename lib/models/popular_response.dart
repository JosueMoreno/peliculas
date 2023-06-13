// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peliculas/models/now_playing_response.dart';

part 'popular_response.freezed.dart';
part 'popular_response.g.dart';

@freezed
class Popular with _$Popular {
  const factory Popular({
    int? page,
    List<Result>? results,
    int? total_pages,
    int? total_results,
  }) = _Popular;

  factory Popular.fromJson(Map<String, Object?> json) =>
      _$PopularFromJson(json);
}
