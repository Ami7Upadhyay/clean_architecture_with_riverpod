// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DefaultResponse _$DefaultResponseFromJson(Map<String, dynamic> json) {
  return _DefaultResponse.fromJson(json);
}

/// @nodoc
mixin _$DefaultResponse {
  bool get success => throw _privateConstructorUsedError;
  Error? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultResponseCopyWith<DefaultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultResponseCopyWith<$Res> {
  factory $DefaultResponseCopyWith(
          DefaultResponse value, $Res Function(DefaultResponse) then) =
      _$DefaultResponseCopyWithImpl<$Res, DefaultResponse>;
  @useResult
  $Res call({bool success, Error? error});

  $ErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$DefaultResponseCopyWithImpl<$Res, $Val extends DefaultResponse>
    implements $DefaultResponseCopyWith<$Res> {
  _$DefaultResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DefaultResponseCopyWith<$Res>
    implements $DefaultResponseCopyWith<$Res> {
  factory _$$_DefaultResponseCopyWith(
          _$_DefaultResponse value, $Res Function(_$_DefaultResponse) then) =
      __$$_DefaultResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Error? error});

  @override
  $ErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_DefaultResponseCopyWithImpl<$Res>
    extends _$DefaultResponseCopyWithImpl<$Res, _$_DefaultResponse>
    implements _$$_DefaultResponseCopyWith<$Res> {
  __$$_DefaultResponseCopyWithImpl(
      _$_DefaultResponse _value, $Res Function(_$_DefaultResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? error = freezed,
  }) {
    return _then(_$_DefaultResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DefaultResponse implements _DefaultResponse {
  const _$_DefaultResponse({this.success = false, this.error});

  factory _$_DefaultResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DefaultResponseFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final Error? error;

  @override
  String toString() {
    return 'DefaultResponse(success: $success, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DefaultResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DefaultResponseCopyWith<_$_DefaultResponse> get copyWith =>
      __$$_DefaultResponseCopyWithImpl<_$_DefaultResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DefaultResponseToJson(
      this,
    );
  }
}

abstract class _DefaultResponse implements DefaultResponse {
  const factory _DefaultResponse({final bool success, final Error? error}) =
      _$_DefaultResponse;

  factory _DefaultResponse.fromJson(Map<String, dynamic> json) =
      _$_DefaultResponse.fromJson;

  @override
  bool get success;
  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  _$$_DefaultResponseCopyWith<_$_DefaultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Error _$ErrorFromJson(Map<String, dynamic> json) {
  return _Error.fromJson(json);
}

/// @nodoc
mixin _$Error {
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get errorMessage => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res, Error>;
  @useResult
  $Res call(
      {int code, @JsonKey(name: 'message') String errorMessage, String? type});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res, $Val extends Error>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? errorMessage = null,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code, @JsonKey(name: 'message') String errorMessage, String? type});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$ErrorCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? errorMessage = null,
    Object? type = freezed,
  }) {
    return _then(_$_Error(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Error implements _Error {
  const _$_Error(
      {required this.code,
      @JsonKey(name: 'message') required this.errorMessage,
      this.type});

  factory _$_Error.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorFromJson(json);

  @override
  final int code;
  @override
  @JsonKey(name: 'message')
  final String errorMessage;
  @override
  final String? type;

  @override
  String toString() {
    return 'Error(code: $code, errorMessage: $errorMessage, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, errorMessage, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorToJson(
      this,
    );
  }
}

abstract class _Error implements Error {
  const factory _Error(
      {required final int code,
      @JsonKey(name: 'message') required final String errorMessage,
      final String? type}) = _$_Error;

  factory _Error.fromJson(Map<String, dynamic> json) = _$_Error.fromJson;

  @override
  int get code;
  @override
  @JsonKey(name: 'message')
  String get errorMessage;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
