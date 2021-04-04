import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SelectMosque extends StatefulWidget {
  @override
  _SelectMosqueState createState() => _SelectMosqueState();
}

class _SelectMosqueState extends State<SelectMosque> {
  List<String> _images = List();
  List<String> _header = List();
  @override
  void initState() {
    _images..add('assets/mosque.jpeg');
    _header..add('First Image');
    super.initState();
  }

  Widget _customScrollView() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 250.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Swiper(
                itemCount: _images.length,
                itemBuilder: (BuildContext context, int index) => Image.asset(
                  _images[index],
                  fit: BoxFit.cover,
                ),
                autoplay: true,
              )),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 75,
                      color: Colors.black12,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: Text('Mosque $index'),
                          )
                        ],
                      ),
                    ),
                  ),
              childCount: 10),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _customScrollView(),
    );
  }
}
