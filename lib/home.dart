import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.indigo[900],
                expandedHeight: 250.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    background: Image.network(
                        'https://www.wallpaperflare.com/static/564/630/321/minimalism-space-shuttle-digital-art-white-wallpaper.jpg',
                        fit: BoxFit.cover)),
              )
            ];
          },
          body: Center(
            child: GlowingOverscrollIndicator(
              color: Colors.indigo[900],
              axisDirection: AxisDirection.down,
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  ListTile(
                    title: Text('Mars'),
                    subtitle: Text(
                        'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System after Mercury.'),
                    leading: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://solarsystem.nasa.gov/internal_resources/3841'),
                    ),
                  ),
                  ListTile(
                    title: Text('Neptune'),
                    subtitle: Text(
                        'Dark, cold and whipped by supersonic winds, ice giant Neptune is the eighth and most distant planet in our solar system.'),
                    leading: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://solarsystem.nasa.gov/system/feature_items/images/82_carousel_neptune_1.jpg'),
                    ),
                  ),
                  ListTile(
                    title: Text('Venus'),
                    subtitle: Text(
                        'Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty.'),
                    leading: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://cdn.mos.cms.futurecdn.net/9KLsRFBAZfmP6r4Rv8Ghzj-320-80.png'),
                    ),
                  ),
                  ListTile(
                    title: Text('Mercury'),
                    subtitle: Text(
                        'The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earth\'s Moon.'),
                    leading: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://image.businessinsider.com/5c9a18b8c6cc50382d262f62?width=1100&format=jpeg&auto=webp'),
                    ),
                  ),
                  ListTile(
                    title: Text('Earth'),
                    subtitle: Text(
                        'Our home planet is the third planet from the Sun, and the only place we know of so far that’s inhabited by living things.'),
                    leading: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://www.google.com/earth/studio/assets/static/images/social.jpg'),
                    ),
                  ),
                  ListTile(
                    title: Text('Jupiter'),
                    subtitle: Text(
                        'Jupiter has a long history surprising scientists—all the way back to 1610 when Galileo Galilei found the first moons beyond Earth.'),
                    leading: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://www.quickanddirtytips.com/sites/default/files/images/8416/jupiter.jpg'),
                    ),
                  ),
                  ListTile(
                    title: Text('Saturn'),
                    subtitle: Text(
                        'Saturn is the sixth planet from the Sun and the second largest planet in our solar system.'),
                    leading: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://www.pulskosmosu.pl/wp-content/uploads/2-nasaresearch.jpg'),
                    ),
                  ),
                  ListTile(
                    title: Text('Uranus'),
                    subtitle: Text(
                        'The seventh planet from the Sun with the third largest diameter in our solar system, Uranus is very cold and windy.'),
                    leading: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/3/3d/Uranus2.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
