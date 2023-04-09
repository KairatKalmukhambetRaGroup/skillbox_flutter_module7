import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:module_7/fetch_file.dart';
import 'package:module_7/my_drawer.dart';

class Artists extends StatefulWidget {
  static const routeName = '/artists';
  const Artists({super.key, this.id});
  final id;

  @override
  State<Artists> createState() => _ArtistsState();
}

class _ArtistsState extends State<Artists> {
  List<Map<String, dynamic>> _artists = [];

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  Future<void> loadJsonData() async {
    final String jsonString = await fetchFileFromAssets('assets/artists.json');
    setState(() {
      _artists = List<Map<String, dynamic>>.from(json.decode(jsonString));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: widget.id != null && _artists.length > int.parse(widget.id)
              ? Text(_artists[int.parse(widget.id)]['name'])
              : null,
        ),
        drawer: widget.id != null ? null : const MyDrawer(index: 1),
        body: Container(
          child: widget.id != null && _artists.length > int.parse(widget.id)
              ? Text(_artists[int.parse(widget.id)]['about'])
              : ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    final artist = _artists[index];
                    return ListTile(
                      title: Text(artist['name']),
                      onTap: () {
                        Navigator.of(context).pushNamed('/artists/$index');
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  itemCount: _artists.length,
                ),
        ),
      ),
    );
  }
}
