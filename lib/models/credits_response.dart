// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credits_response.freezed.dart';
part 'credits_response.g.dart';

@freezed
class Credits with _$Credits {
    const factory Credits({
        int? id,
        List<Cast>? cast,
    }) = _Credits;

    factory Credits.fromJson(Map<String, Object?> json) =>
      _$CreditsFromJson(json);
}

@freezed
class Cast with _$Cast {
    const factory Cast({
        bool? adult,
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
        int? order,
    }) = _Cast;

    factory Cast.fromJson(Map<String, Object?> json) =>
      _$CastFromJson(json);
}