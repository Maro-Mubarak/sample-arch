// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SampleState<T> {
  RequestState get getSampleRequestState =>
      throw _privateConstructorUsedError; //sample response
  SampleResponseModel? get sampleResponseModel =>
      throw _privateConstructorUsedError; //error message
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of SampleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SampleStateCopyWith<T, SampleState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleStateCopyWith<T, $Res> {
  factory $SampleStateCopyWith(
          SampleState<T> value, $Res Function(SampleState<T>) then) =
      _$SampleStateCopyWithImpl<T, $Res, SampleState<T>>;
  @useResult
  $Res call(
      {RequestState getSampleRequestState,
      SampleResponseModel? sampleResponseModel,
      String errorMessage});
}

/// @nodoc
class _$SampleStateCopyWithImpl<T, $Res, $Val extends SampleState<T>>
    implements $SampleStateCopyWith<T, $Res> {
  _$SampleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SampleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getSampleRequestState = null,
    Object? sampleResponseModel = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      getSampleRequestState: null == getSampleRequestState
          ? _value.getSampleRequestState
          : getSampleRequestState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      sampleResponseModel: freezed == sampleResponseModel
          ? _value.sampleResponseModel
          : sampleResponseModel // ignore: cast_nullable_to_non_nullable
              as SampleResponseModel?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res>
    implements $SampleStateCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {RequestState getSampleRequestState,
      SampleResponseModel? sampleResponseModel,
      String errorMessage});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$SampleStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SampleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getSampleRequestState = null,
    Object? sampleResponseModel = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_$InitialImpl<T>(
      getSampleRequestState: null == getSampleRequestState
          ? _value.getSampleRequestState
          : getSampleRequestState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      sampleResponseModel: freezed == sampleResponseModel
          ? _value.sampleResponseModel
          : sampleResponseModel // ignore: cast_nullable_to_non_nullable
              as SampleResponseModel?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl(
      {this.getSampleRequestState = RequestState.initial,
      this.sampleResponseModel,
      this.errorMessage = ''});

  @override
  @JsonKey()
  final RequestState getSampleRequestState;
//sample response
  @override
  final SampleResponseModel? sampleResponseModel;
//error message
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'SampleState<$T>(getSampleRequestState: $getSampleRequestState, sampleResponseModel: $sampleResponseModel, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl<T> &&
            (identical(other.getSampleRequestState, getSampleRequestState) ||
                other.getSampleRequestState == getSampleRequestState) &&
            (identical(other.sampleResponseModel, sampleResponseModel) ||
                other.sampleResponseModel == sampleResponseModel) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, getSampleRequestState, sampleResponseModel, errorMessage);

  /// Create a copy of SampleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<T, _$InitialImpl<T>> get copyWith =>
      __$$InitialImplCopyWithImpl<T, _$InitialImpl<T>>(this, _$identity);
}

abstract class _Initial<T> implements SampleState<T> {
  const factory _Initial(
      {final RequestState getSampleRequestState,
      final SampleResponseModel? sampleResponseModel,
      final String errorMessage}) = _$InitialImpl<T>;

  @override
  RequestState get getSampleRequestState; //sample response
  @override
  SampleResponseModel? get sampleResponseModel; //error message
  @override
  String get errorMessage;

  /// Create a copy of SampleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<T, _$InitialImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
