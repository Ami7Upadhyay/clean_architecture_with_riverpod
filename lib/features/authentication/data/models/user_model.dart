import 'package:clean_arch_with_riverpod/features/authentication/domain/entity/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel(
      {@JsonKey(name: 'page') required int page,
      @JsonKey(name: 'per_page') required int perPage,
      @JsonKey(name: 'total') required int total,
      @JsonKey(name: 'total_pages') required int totalPages,
      @JsonKey(name: 'data') required List<User> data}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
