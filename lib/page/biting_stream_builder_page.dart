import 'package:flutter/material.dart';

class BitingStreamBuilderPage extends StatefulWidget {
  @override
  _BitingStreamBuilderPageState createState() =>
      _BitingStreamBuilderPageState();
}

class _BitingStreamBuilderPageState extends State<BitingStreamBuilderPage> {
  Stream<List<int>> _bids = (() async* {
    List<int> _dataset = [0];
    int k = 0;
    while (k < 30) {
      yield _dataset;
      k++;
      _dataset.add(k);
      await Future<void>.delayed(Duration(seconds: 1));
    }
  })();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<List<int>>(
        stream: _bids,
        builder: (BuildContext context, AsyncSnapshot<List<int>> snapshot) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text("$index"),);
            },
          );
        },
      ),
    );
  }
}
