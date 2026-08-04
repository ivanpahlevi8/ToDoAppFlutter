import 'package:freezed_annotation/freezed_annotation.dart';

part 'assign_user_response_model.freezed.dart';
part 'assign_user_response_model.g.dart';

@freezed
class AssignUserResponseModel with _$AssignUserResponseModel {
  factory AssignUserResponseModel({
    @JsonKey(name: "teamId") required int teamId,
    @JsonKey(name: "userId") required String userId,
    @JsonKey(name: "teamRoleId") required int teamRoleId,
  }) = _AssignUserResponseModel;

  factory AssignUserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AssignUserResponseModelFromJson(json);
}
