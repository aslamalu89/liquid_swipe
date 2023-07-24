import 'package:flutter/material.dart';

class Unknown extends StatefulWidget {
  const Unknown({super.key});

  @override
  State<Unknown> createState() => _UnknownState();
}

class _UnknownState extends State<Unknown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionTile Demo'),
      ),
      body: ListView(
        children: [
          ExpansionTile(
            title: Text('Expandable Item 1'),
            children: [
              ListTile(
                title: Text('Subitem 1'),
                onTap: () {
                },
              ),
              ListTile(
                title: Text('Subitem 2'),
                onTap: () {

                },
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Expandable Item 2'),
            children: [
              ListTile(
                title: Text('Subitem 3'),
                onTap: () {

                },
              ),
              ListTile(
                title: Text('Subitem 4'),
                onTap: () {

                },
              ),
            ],
          ),
          Divider(
            color: Colors.tealAccent,
            thickness: 4,
          ),
          Spacer(),
          Visibility(
            visible: false,
            child: ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(50,0)),
                onPressed: (){},
                child: Text("submit")),
            replacement: CircularProgressIndicator(),
          )
        ],
      ),
    );
  }
}
