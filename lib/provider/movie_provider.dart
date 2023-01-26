import 'dart:math';
import 'package:flutter/cupertino.dart';

import '../model/provider_model/movie_provider_model.dart';

final List<MovieProvider> init = List.generate(
  50,
  (index) => MovieProvider(
    title: "$init Name",
    duration: "${Random().nextInt(100)+60} minutes",
    trueORfalse: Random().nextBool()
  ),
);

class MovieOtherProvider with ChangeNotifier{
  final List<MovieProvider> _movies=init;
  List<MovieProvider> get movies => _movies;
}
