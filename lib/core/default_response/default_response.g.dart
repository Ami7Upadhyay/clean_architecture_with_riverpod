// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DefaultResponse _$$_DefaultResponseFromJson(Map<String, dynamic> json) =>
    _$_DefaultResponse(
      success: json['success'] as bool? ?? false,
      error: json['error'] == null
          ? null
          : Error.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DefaultResponseToJson(_$_DefaultResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'error': instance.error?.toJson(),
    };

_$_Error _$$_ErrorFromJson(Map<String, dynamic> json) => _$_Error(
      code: json['code'] as int,
      errorMessage: json['message'] as String,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_ErrorToJson(_$_Error instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.errorMessage,
      'type': instance.type,
    };
