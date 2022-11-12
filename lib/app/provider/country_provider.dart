import 'package:countries_app/app/models/countries.dart';
import 'package:countries_app/app/services/countries_api.dart';
import 'package:flutter/cupertino.dart';

class CountriesProvider with ChangeNotifier {
  late List<CountriesModel>? _countryList = [];
  late List<CountriesModel>? _countryByNameList = [];
  late List<CountriesModel>? _searchResult = [];
  late List<CountriesModel>? _finalList = [];
  CountriesApi countriesApiService = CountriesApi();
  bool _isLoading = true;
  get countryData => _searchResult!.isEmpty ? _countryList : _searchResult;
  get countryByNameList => _countryByNameList;
  get isLoading => _isLoading;

  getAllCountriesData() async {
    _countryList = (await countriesApiService.getAllCountries());
    _countryList!.sort((a, b) => a.name.common
        .toLowerCase()
        .compareTo(b.name.common.toLowerCase().toString()));
    _isLoading = false;
    notifyListeners();
  }

  getAllCountryByName(String name) async {
    _countryByNameList = (await countriesApiService.getCountryBName(name));

    notifyListeners();
  }

  searchResult(String text) {
    _searchResult!.clear();
    for (var value in _countryList!) {
      if (value.name.common.toLowerCase().contains(text.toLowerCase())) {
        _searchResult!.add(value);
      }
    }
    notifyListeners();
  }
}
