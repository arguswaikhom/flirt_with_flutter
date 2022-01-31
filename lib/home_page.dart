import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff2f2f2),
      padding: const EdgeInsets.all(16.0),
      child: Scaffold(
        appBar: AppBar(
          leading: Image.asset('assets/images/logo.png'),
          title: Row(
            children: [
              Text('Flirt with Flutter'),
              const SizedBox(width: 32.0),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  child: TextField(
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                    ),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: const Text('Project'),
            ),
            const SizedBox(width: 16.0),
            CircleAvatar(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        body: Container(),
      ),
    );
  }
}
