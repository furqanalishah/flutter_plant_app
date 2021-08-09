import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:plant_app/constants.dart';

import 'featured_plant.dart';
import 'header_with_search_box.dart';
import 'recommend_plants.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'Recommended', press: () {}),
          RecommendPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlant(),
          SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}
