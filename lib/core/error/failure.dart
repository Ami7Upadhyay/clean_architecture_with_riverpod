import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  factory Failure.server({required int code, required String message}) =
      _Server;
  factory Failure.network({required String message}) = _Network;
  factory Failure.exception({required String message}) = _Exception;
}
