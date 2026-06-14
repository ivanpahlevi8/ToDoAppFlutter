import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@Freezed(genericArgumentFactories: true)
class ResponseModel<T> with _$ResponseModel<T> {
  // 2. Add <T> here
  factory ResponseModel({
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "isSuccess") required bool isSuccess,

    // 3. Change dynamic to T (made nullable just in case the API returns null on failure)
    @JsonKey(name: "result") T? result,
  }) = _ResponseModel<T>; // 4. Add <T> here

  // 5. Update the fromJson factory to accept the generic converter
  factory ResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$ResponseModelFromJson(json, fromJsonT);
}
