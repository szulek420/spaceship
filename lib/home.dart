import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.indigo[900],
            leading: Icon(Icons.menu),
            expandedHeight: 250.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://www.wallpaperflare.com/static/564/630/321/minimalism-space-shuttle-digital-art-white-wallpaper.jpg',
              fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: true,
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text('Mars'),
                  subtitle: Text('Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System after Mercury.'),
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: NetworkImage('https://solarsystem.nasa.gov/internal_resources/3841'),
                  ),
                ),
                ListTile(
                  title: Text('Neptune'),
                  subtitle: Text('Dark, cold and whipped by supersonic winds, ice giant Neptune is the eighth and most distant planet in our solar system.'),
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: NetworkImage('https://solarsystem.nasa.gov/system/feature_items/images/82_carousel_neptune_1.jpg'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      
    );
  }
}