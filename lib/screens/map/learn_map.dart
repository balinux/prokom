import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class LearnMap extends StatefulWidget {
  const LearnMap({Key key}) : super(key: key);

  @override
  _LearnMapState createState() => _LearnMapState();
}

class _LearnMapState extends State<LearnMap> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: size.height * 0.5,
              color: Colors.red,
              child: FlutterMap(
                options: MapOptions(
                    center: LatLng(-8.722185108108052, 115.24384381188827)),
                layers: [
                  TileLayerOptions(
                      urlTemplate:
                          "https://api.mapbox.com/styles/v1/balinux/ckwn02m5s6mwo14och1bb7qee/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYmFsaW51eCIsImEiOiJja2d5Z2NwazgwaDd5MnFuNWRjOHR3eXg1In0.4hm9-nzJnb-vASCEdOwycQ",
                      additionalOptions: {
                        'accessToken':
                            'pk.eyJ1IjoiYmFsaW51eCIsImEiOiJja2d5Z2NwazgwaDd5MnFuNWRjOHR3eXg1In0.4hm9-nzJnb-vASCEdOwycQ',
                        'id': 'mapbox.mapbox-streets-v8',
                      }),
                  MarkerLayerOptions(markers: [
                    Marker(
                      width: 100.0,
                      height: 100.0,
                      point: LatLng(-8.722185108108052, 115.24384381188827),
                      builder: (ctx) => InkWell(
                          onTap: () {
                            print("tes");
                          },
                          child: const Icon(Icons.place, color: Colors.blue)),
                    )
                  ])
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
