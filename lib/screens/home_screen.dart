import 'package:flutter/material.dart';
import 'package:flutter_proyectofinal/providers/movies_provider.dart';
import 'package:flutter_proyectofinal/providers/movies_providertxt.dart';
import 'package:flutter_proyectofinal/screens/widgets/backfround.dart';
import 'package:flutter_proyectofinal/screens/widgets/card_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);
    final moviesProvider2 =
        Provider.of<MoviesProvidertxt>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined))
        ],
      ),
      body: Stack(children: [
        const Background(),
        SingleChildScrollView(
          child: Column(
            children: [
              CardSwiper(movies: moviesProvider.dataMovies),
              CardSwiper(movies: moviesProvider2.dataMovies)
            ],
          ),
        ),
      ]),
    );
  }
}
