import 'package:flutter/material.dart';
import 'quote.dart';
import 'cardmovie.dart';

void main() => runApp(
      MaterialApp(
        home: TryList(),
      ),
    );

class TryList extends StatefulWidget {
  @override
  _TryListState createState() => _TryListState();
}

class _TryListState extends State<TryList> {
  List<Quote> quotes = [
    Quote(movie: 'Avengers', rating: 5),
    Quote(movie: 'Pitch Perfect', rating: 2),
    Quote(movie: 'Coming to America', rating: 4)
  ];
//  Widget moviesTheme(film) {
//    return Padding(
//      padding: const EdgeInsets.all(10.0),
//      child: CardMovie(film: film),
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Movie Titles'),
        ),
        body: Column(
          children: quotes
              .map(
                (film) => CardMovie(
                    film: film,
                    delete: () {
                      setState(() {
                        quotes.remove(film);
                      });
                    }),
              )
              .toList(),
        ));
  }
}
