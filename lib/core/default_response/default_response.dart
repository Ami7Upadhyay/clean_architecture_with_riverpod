import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_response.freezed.dart';
part 'default_response.g.dart';

@Freezed()
// @JsonSerializable()
class DefaultResponse with _$DefaultResponse {
  @JsonSerializable(explicitToJson: true)
  const factory DefaultResponse({
    @Default(false) bool success,
    Error? error,
  }) = _DefaultResponse;

  factory DefaultResponse.fromJson(Map<String, dynamic> json) =>
      _$DefaultResponseFromJson(json);
}

@Freezed()
// @JsonSerializable()
class Error with _$Error {
  const factory Error({
    required int code,
    @JsonKey(name: 'message') required String errorMessage,
    String? type,
  }) = _Error;

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
}
