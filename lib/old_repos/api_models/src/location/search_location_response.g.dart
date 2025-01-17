// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchLocationResponseImpl _$$SearchLocationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchLocationResponseImpl(
      searchContext: json['searchContext'] == null
          ? null
          : SearchContextResponse.fromJson(
              json['searchContext'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>?)
          ?.map((e) =>
              SearchLocationInfoResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchLocationResponseImplToJson(
        _$SearchLocationResponseImpl instance) =>
    <String, dynamic>{
      'searchContext': instance.searchContext,
      'result': instance.result,
    };
