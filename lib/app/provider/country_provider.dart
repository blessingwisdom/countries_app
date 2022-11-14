import 'package:countries_app/app/models/countries.dart';
import 'package:countries_app/app/services/countries_api.dart';
import 'package:flutter/cupertino.dart';

class CountriesProvider with ChangeNotifier {
  late List<CountriesModel>? _countryList = [];
  late List<CountriesModel>? _countryByNameList = [];
  late Map<String, List<CountriesModel>> _countryGroupList = {};

  late List<CountriesModel>? _searchResult = [];
  late List<CountriesModel>? _finalList = [];
  CountriesApi countriesApiService = CountriesApi();
  bool _isLoading = true;
  List<CountriesModel>? get countryData => _searchResult!.isEmpty ? _countryList : _searchResult;
  List<CountriesModel>? get countryByNameList => _countryByNameList;
  Map<String, List<CountriesModel>> get countryGroupList => _countryGroupList;
  bool get isLoading => _isLoading;

  getAllCountriesData() async {
    _countryList = await countriesApiService.getAllCountries();
    _countryList?.sort((a, b) => a.name?.common?.length
        .compareTo(b.name?.common?.length ?? 0) ?? 0);
    _groupCountries();
  }

  _groupCountries(){
    _countryList?.forEach((country) {
      if (_countryGroupList['${country.name?.common?[0]}'] == null) {
        _countryGroupList['${country.name?.common?[0]}'] = <CountriesModel>[];
      }
      _countryGroupList['${country.name?.common?[0]}']?.add(country);
    });

    final sortedByKeyMap = Map.fromEntries(
    _countryGroupList.entries.toList()..sort((e1, e2) => e1.key.compareTo(e2.key)));
    _countryGroupList = sortedByKeyMap;
    _isLoading = false;
    notifyListeners();
  }

  getAllCountryByName(String name) async {
    _countryByNameList = await countriesApiService.getCountryBName(name);

    notifyListeners();
  }

  searchResult(String text) {
    _searchResult!.clear();
    for (var value in _countryList!) {
      if (value.name?.common?.toLowerCase().contains(text.toLowerCase()) ?? false) {
        _searchResult!.add(value);
      }
    }
    notifyListeners();
  }
}
