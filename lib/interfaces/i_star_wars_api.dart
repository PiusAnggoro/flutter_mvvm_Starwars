import 'dart:async';
import 'package:flutter_mvvm/models/character.dart';
import 'package:flutter_mvvm/models/film.dart';

abstract class IStarWarsApi {
  Future<List<Film>> getFilms();
  Future<List<Character>> getCharacters();
}