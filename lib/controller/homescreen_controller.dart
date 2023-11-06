import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_search/api_config/api_config.dart';
import 'package:http/http.dart' as http;
import 'package:movie_search/model/movie_data_model.dart';

class HomescreenController with ChangeNotifier {
  MovieData? movieModel;
  bool isLoading = false;
  bool isDisplay = false;

  fetchMovie(String searvhQuaryy) async {
    isLoading = true;
    notifyListeners();
    final url =
        Uri.parse('${ApiConfig.baseUrl}${ApiConfig.apiKey}=$searvhQuaryy');
    final response = await http.get(url);
    var decodeddata = jsonDecode(response.body);
    movieModel = MovieData.fromJson(decodeddata);
    isLoading = false;
    notifyListeners();
  }
}
