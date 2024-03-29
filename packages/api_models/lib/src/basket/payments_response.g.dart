// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payments_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentsResponseImpl _$$PaymentsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentsResponseImpl(
      payments: (json['payments'] as List<dynamic>?)
          ?.map((e) => PaymentItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$PaymentsResponseImplToJson(
        _$PaymentsResponseImpl instance) =>
    <String, dynamic>{
      'payments': instance.payments,
      'errorMessage': instance.errorMessage,
    };
