import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<TData, TErr> with _$Result<TData, TErr> {
  const factory Result.data(TData value) = ResultData<TData, TErr>;
  const factory Result.error(TErr error) = ResultError<TData, TErr>;
}