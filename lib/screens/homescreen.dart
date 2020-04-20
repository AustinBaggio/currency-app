import 'package:currencyApp/components/currency.dart';
import 'package:currencyApp/models/currencyData.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Currency cur = new Currency(CurrencyData());
  String baseCurrency = "USD";

  getCurrencyHelper(String base) async {
    cur = Currency(await cur.getCurrencyData(base));
    setState(() {});
  }

  Widget showCurrencies() {
    if (cur.data.base != null) {
      return Column(
        children: <Widget>[
          Text("1 ${cur.data.base} = ${cur.data.rates.USD.toStringAsFixed(4)} USD"),
          Text("1 ${cur.data.base} = ${cur.data.rates.CAD.toStringAsFixed(4)} CAD"),
          Text("1 ${cur.data.base} = ${cur.data.rates.EUR.toStringAsFixed(4)} UER"),
          Text("1 ${cur.data.base} = ${cur.data.rates.GBP.toStringAsFixed(4)} GBP"),
        ],
      );
    }
    return Text(". . .");
  }

  @override
  void initState() {
    super.initState();
    getCurrencyHelper(baseCurrency);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(cur.data.base);
        },
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(cur.data.base == null
                  ? "Loading"
                  : "On ${cur.data.date} the base currency ${cur.data.base} translates to: "),
              showCurrencies(),
              DropdownButton<String>(
                value: baseCurrency,
                onChanged: (String newValue) {
                  setState(() {
                    baseCurrency = newValue;
                    getCurrencyHelper(baseCurrency);
                  });
                },
                items: <String>['USD', 'CAD', 'EUR', 'GBP']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
