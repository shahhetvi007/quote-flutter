import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';
import 'package:quotes/quote_card.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    const Quote(
        text: 'Be yourself, everybody else is already taken!',
        author: 'Osca Wilde'),
    const Quote(
        text: 'I have nothing to declare except my genius',
        author: 'Osca Wilde'),
    const Quote(
        text: 'The truth is rarely pure and never simple',
        author: 'Osca Wilde'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ));
  }
}
