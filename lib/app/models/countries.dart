class CountriesModel {
  Name? name;
  bool? independent;
  String? status;
  bool? unMember;
  Currencies? currencies;
  Idd? idd;
  List<String>? capital;
  List<String>? altSpellings;
  String? region;
  Languages? languages;
  String? subregion;
  List<int>? latlng;
  bool? landlocked;
  List<String>? borders;
  double? area;
  String? flag;
  Maps? maps;
  int? population;
  Gini? gini;
  String? fifa;
  Car? car;
  List<String>? timezones;
  Flags? flags;
  Flags? coatOfArms;
  String? startOfWeek;
  CapitalInfo? capitalInfo;

  CountriesModel(
      {this.name,
      this.independent,
      this.status,
      this.unMember,
      this.currencies,
      this.idd,
      this.capital,
      this.altSpellings,
      this.region,
      this.subregion,
      this.latlng,
      this.landlocked,
      this.borders,
      this.area,
      this.flag,
      this.maps,
      this.languages,
      this.population,
      this.gini,
      this.fifa,
      this.car,
      this.timezones,
      this.flags,
      this.coatOfArms,
      this.startOfWeek,
      this.capitalInfo});

  CountriesModel.fromJson(Map<String, dynamic> json) {
    name = json['name'] != null ?  Name.fromJson(json['name']) : null;
    independent = json['independent'];
    status = json['status'];
    unMember = json['unMember'];
    currencies = json['currencies'] != null
        ?  Currencies.fromJson(json['currencies'])
        : null;
    idd = json['idd'] != null ?  Idd.fromJson(json['idd']) : null;
    capital = json['capital']?.cast<String>();
    altSpellings = json['altSpellings']?.cast<String>();
    region = json['region'];
    subregion = json['subregion'];
   languages = json['languages'] != null
        ?  Languages.fromJson(json['languages'])
        : null;
    latlng = json['latlng']?.cast<int>();
    landlocked = json['landlocked'];
    borders = json['borders']?.cast<String>();
    area = json['area'];
    flag = json['flag'];
    maps = json['maps'] != null ?  Maps.fromJson(json['maps']) : null;
    population = json['population'];
    gini = json['gini'] != null ?  Gini.fromJson(json['gini']) : null;
    fifa = json['fifa'];
    car = json['car'] != null ?  Car.fromJson(json['car']) : null;
    timezones = json['timezones']?.cast<String>();
    flags = json['flags'] != null ?  Flags.fromJson(json['flags']) : null;
    coatOfArms = json['coatOfArms'] != null
        ?  Flags.fromJson(json['coatOfArms'])
        : null;
    startOfWeek = json['startOfWeek'];
    capitalInfo = json['capitalInfo'] != null
        ? CapitalInfo.fromJson(json['capitalInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['independent'] = independent;
    data['status'] = status;
    data['unMember'] = unMember;
    if (currencies != null) {
      data['currencies'] = currencies!.toJson();
    }
    if (idd != null) {
      data['idd'] = idd!.toJson();
    }
    data['capital'] = capital;
    data['altSpellings'] = altSpellings;
    data['region'] = region;
    data['subregion'] = subregion;
   if (languages != null) {
      data['languages'] = languages!.toJson();
    }
    data['latlng'] = latlng;
    data['landlocked'] = landlocked;
    data['borders'] = borders;
    data['area'] = area;
  
    data['flag'] = flag;
    if (maps != null) {
      data['maps'] = maps!.toJson();
    }
    data['population'] = population;
    if (gini != null) {
      data['gini'] = gini!.toJson();
    }
    data['fifa'] = fifa;
    if (car != null) {
      data['car'] = car!.toJson();
    }
    data['timezones'] = timezones;
    if (flags != null) {
      data['flags'] = flags!.toJson();
    }
    if (coatOfArms != null) {
      data['coatOfArms'] = coatOfArms!.toJson();
    }
    data['startOfWeek'] = startOfWeek;
    if (capitalInfo != null) {
      data['capitalInfo'] = capitalInfo!.toJson();
    }
    return data;
  }
}

class Name {
  String? common;
  String? official;
  NativeName? nativeName;

  Name({this.common, this.official, this.nativeName});

  Name.fromJson(Map<String, dynamic> json) {
    common = json['common'];
    official = json['official'];
    nativeName = json['nativeName'] != null
        ?  NativeName.fromJson(json['nativeName'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['common'] = common;
    data['official'] = official;
    if (nativeName != null) {
      data['nativeName'] = nativeName!.toJson();
    }
    return data;
  }
}

class NativeName {
  Ara? ara;

  NativeName({this.ara});

  NativeName.fromJson(Map<String, dynamic> json) {
    ara = json['ara'] != null ?  Ara.fromJson(json['ara']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    if (ara != null) {
      data['ara'] = ara!.toJson();
    }
    return data;
  }
}

class Ara {
  String? official;
  String? common;

  Ara({this.official, this.common});

  Ara.fromJson(Map<String, dynamic> json) {
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['official'] = official;
    data['common'] = common;
    return data;
  }
}

class Currencies {
  MRU? mRU;

  Currencies({this.mRU});

  Currencies.fromJson(Map<String, dynamic> json) {
    mRU = json['MRU'] != null ?  MRU.fromJson(json['MRU']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    if (mRU != null) {
      data['MRU'] = mRU!.toJson();
    }
    return data;
  }
}

class MRU {
  String? name;
  String? symbol;

  MRU({this.name, this.symbol});

  MRU.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['name'] = name;
    data['symbol'] = symbol;
    return data;
  }
}

class Idd {
  String? root;
  List<String>? suffixes;

  Idd({this.root, this.suffixes});

  Idd.fromJson(Map<String, dynamic> json) {
    root = json['root'];
    suffixes = json['suffixes']?.cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['root'] = root;
    data['suffixes'] = suffixes;
    return data;
  }
}


class Maps {
  String? googleMaps;
  String? openStreetMaps;

  Maps({this.googleMaps, this.openStreetMaps});

  Maps.fromJson(Map<String, dynamic> json) {
    googleMaps = json['googleMaps'];
    openStreetMaps = json['openStreetMaps'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['googleMaps'] = googleMaps;
    data['openStreetMaps'] = openStreetMaps;
    return data;
  }
}

class Gini {
  double? d2014;

  Gini({this.d2014});

  Gini.fromJson(Map<String, dynamic> json) {
    d2014 = json['2014'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['2014'] = d2014;
    return data;
  }
}

class Car {
  List<String>? signs;
  String? side;

  Car({this.signs, this.side});

  Car.fromJson(Map<String, dynamic> json) {
    signs = json['signs']?.cast<String>();
    side = json['side'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['signs'] = signs;
    data['side'] = side;
    return data;
  }
}

class Flags {
  String? png;
  String? svg;

  Flags({this.png, this.svg});

  Flags.fromJson(Map<String, dynamic> json) {
    png = json['png'];
    svg = json['svg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['png'] = png;
    data['svg'] = svg;
    return data;
  }
}

class CapitalInfo {
  List<double>? latlng;

  CapitalInfo({this.latlng});

  CapitalInfo.fromJson(Map<String, dynamic> json) {
    latlng = json['latlng']?.cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['latlng'] = latlng;
    return data;
  }
}


class Languages {
  String? ara;

  Languages({this.ara});

  Languages.fromJson(Map<String, dynamic> json) {
    ara = json['ara'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['ara'] = ara;
    return data;
  }
}