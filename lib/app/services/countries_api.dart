import 'dart:convert';

import 'package:countries_app/app/models/countries.dart';
import 'package:http/http.dart' as http;
import '../const/api_const.dart';

class CountriesApi {
  Future<List<CountriesModel>?> getAllCountries() async {
    List<CountriesModel> result = [];
    try {
      final response = await http.get(
        Uri.parse(apiBaseUrl),
      );
      if (response.statusCode == 200) {
        final jsonList = jsonDecode(response.body);
        for (var element in jsonList) {
          result.add(CountriesModel.fromJson(element));
        }

        return result;
      }
    } catch (error) {
      print('error: $error');
      throw error.toString();
    }
    return null;
  }

  Future<List<CountriesModel>?> getCountryBName(String countryName) async {
    List<CountriesModel> result = [];
    try {
      final response = await http.get(
        Uri.parse(
            "https://restcountries.com/v3.1/name/${countryName.toLowerCase()}"),
      );
      if (response.statusCode == 200) {
        final jsonList = jsonDecode(response.body);
        for (var element in jsonList) {
          result.add(
            CountriesModel.fromJson(element),
          );
        }
        return result;
      }
    } catch (error) {
      print('error: $error');
      throw error.toString();
    }
    return null;
  }
}
