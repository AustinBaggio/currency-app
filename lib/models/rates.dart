import 'package:json_annotation/json_annotation.dart';

part 'rates.g.dart';

@JsonSerializable()
class Rates {
    Rates();

    num CAD;
    num HKD;
    num ISK;
    num PHP;
    num DKK;
    num HUF;
    num CZK;
    num GBP;
    num RON;
    num SEK;
    num IDR;
    num INR;
    num BRL;
    num RUB;
    num HRK;
    num JPY;
    num THB;
    num CHF;
    num EUR;
    num MYR;
    num BGN;
    num TRY;
    num CNY;
    num NOK;
    num NZD;
    num ZAR;
    num USD;
    num MXN;
    num SGD;
    num AUD;
    num ILS;
    num KRW;
    num PLN;
    
    factory Rates.fromJson(Map<String,dynamic> json) => _$RatesFromJson(json);
    Map<String, dynamic> toJson() => _$RatesToJson(this);
}
