// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResponse _$$_SearchResponseFromJson(Map<String, dynamic> json) =>
    _$_SearchResponse(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      total_pages: json['total_pages'] as int?,
      total_results: json['total_results'] as int?,
    );

Map<String, dynamic> _$$_SearchResponseToJson(_$_SearchResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.total_pages,
      'total_results': instance.total_results,
    };
