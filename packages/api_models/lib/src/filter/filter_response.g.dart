// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterResponseImpl _$$FilterResponseImplFromJson(Map<String, dynamic> json) =>
    _$FilterResponseImpl(
      filter: (json['filter'] as List<dynamic>?)
          ?.map((e) => FilterInfoResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FilterResponseImplToJson(
        _$FilterResponseImpl instance) =>
    <String, dynamic>{
      'filter': instance.filter,
    };
