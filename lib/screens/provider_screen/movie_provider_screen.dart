import 'package:flutter/material.dart';
import 'package:retry_build_api/provider/movie_provider.dart';
import 'package:provider/provider.dart';

class MovieListProvider extends StatefulWidget {
  const MovieListProvider({super.key});

  @override
  State<MovieListProvider> createState() => _MovieListProviderState();
}

class _MovieListProviderState extends State<MovieListProvider> {
  @override
  Widget build(BuildContext context) {
    final movies = context.watch<MovieOtherProvider>().movies;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie provider"),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) => Card(
            child: ListTile(
              title: Text(movies[index].title),
              leading: Text("${movies[index].duration}"),
              subtitle: Text("${movies[index].trueORfalse}"),
            ),
          ),
        ),
      ),
    );
  }
}
