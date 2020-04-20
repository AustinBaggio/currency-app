import 'dart:convert';

import 'package:currencyApp/models/currencyData.dart';
import 'package:http/http.dart' as http;

class Currency {
  CurrencyData data;
  Currency(this.data);

  Future<CurrencyData> getCurrencyData(String base) async {
    String url = "https://api.exchangeratesapi.io/latest?base=$base";

    try {
      var resp = await http.get(url);
      if (resp.body != null) {
        return CurrencyData.fromJson(jsonDecode(resp.body));
      } else {
        print("No resp from query for currencydata");
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
