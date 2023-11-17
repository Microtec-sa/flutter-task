import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

/// Api response carries resopnce details
@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  /// Api response carries resopnce details

  const factory ApiResponse({
    required T data,
    required int page,
    required int totalPage,
  }) = _ApiResponse;
}
