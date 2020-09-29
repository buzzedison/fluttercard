import 'package:flutter/material.dart';
import 'quote.dart';

class CardMovie extends StatelessWidget {
  final Quote film;
  final Function delete;
  CardMovie({this.film, this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black54,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              film.movie,
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
            Text(
              film.rating.toString(),
              style: TextStyle(fontSize: 15.0, color: Colors.yellow),
            ),
            SizedBox(height: 4.0),
            FlatButton.icon(
              onPressed: delete,
              icon: Icon(Icons.delete),
              label: Text(
                'Delete',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
