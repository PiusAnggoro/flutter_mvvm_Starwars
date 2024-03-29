import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_mvvm/interfaces/i_star_wars_api.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_mvvm/models/film.dart';
import 'package:flutter_mvvm/models/character.dart';

class MainPageViewModel extends Model {
  Future<List<Film>> _films;
  Future<List<Film>> get films => _films;
  set films(Future<List<Film>> value) {
    _films = value;
    notifyListeners();
  }

  Future<List<Character>> _characters;
  Future<List<Character>> get characters => _characters;
  set characters(Future<List<Character>> value) {
    _characters = value;
    notifyListeners();
  }

  final IStarWarsApi apiSvc;

  MainPageViewModel({@required this.apiSvc});

  Future<bool> setFilms() async {
    films = apiSvc?.getFilms();
    return films != null;
  }

  Future<bool> setCharacters() async {
    characters = apiSvc?.getCharacters();
    return characters != null;
  }
}