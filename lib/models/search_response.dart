// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peliculas/models/models.dart';

part 'search_response.freezed.dart';
part 'search_response.g.dart';

@freezed
class SearchResponse with _$SearchResponse {
    const factory SearchResponse({
        int? page,
        List<Result>? results,
        int? total_pages,
        int? total_results,
    }) = _SearchResponse;

    factory SearchResponse.fromJson(Map<String, Object?> json) =>
      _$SearchResponseFromJson(json);
}
