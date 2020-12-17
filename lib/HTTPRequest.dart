import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class HTTPRequest{
  Future<List<Country>> fetchCountries() async {
    final response = await http.get(
      'https://api.advaice.yourcofounder.com.ua/countries',
      headers: {HttpHeaders.authorizationHeader: "bearer 80ad1868-e5a0-42fe-bd8d-b9f7fa03e07f"},
    );

    if(response.statusCode == 200){
      Iterable countries = json.decode(response.body)['data'];
      return List<Country>.from(countries.map((i) => Country.fromJson(i)));
    }
    else{
      throw new Exception(json.decode(response.body)['error']);
    }
  }
}

class Country {
  final String name;
  final int id;

  Country({this.name, this.id});

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json['name'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'id': id,
  };
}