import 'package:json_annotation/json_annotation.dart';
import "rates.dart";
part 'currencyData.g.dart';

@JsonSerializable()
class CurrencyData {
    CurrencyData();

    Rates rates;
    String base;
    String date;
    
    factory CurrencyData.fromJson(Map<String,dynamic> json) => _$CurrencyDataFromJson(json);
    Map<String, dynamic> toJson() => _$CurrencyDataToJson(this);
}
