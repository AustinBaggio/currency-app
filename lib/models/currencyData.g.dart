// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currencyData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrencyData _$CurrencyDataFromJson(Map<String, dynamic> json) {
  return CurrencyData()
    ..rates = json['rates'] == null
        ? null
        : Rates.fromJson(json['rates'] as Map<String, dynamic>)
    ..base = json['base'] as String
    ..date = json['date'] as String;
}

Map<String, dynamic> _$CurrencyDataToJson(CurrencyData instance) =>
    <String, dynamic>{
      'rates': instance.rates,
      'base': instance.base,
      'date': instance.date
    };
