import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:final_year_project/HomePage.dart';

class SelectTuto extends StatefulWidget {
  @override
  _SelectTutoState createState() => _SelectTutoState();
}

class _SelectTutoState extends State<SelectTuto> {
  List<String> _images = List();
  List<String> _header = List();

  navigateToFirstPage() async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  void initState() {
    _images..add('assets/tutorials.png');
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
                      height: 70,
                      color: Colors.black12,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: navigateToFirstPage,
                            child: Text(
                              'Tutorial $index',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
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
