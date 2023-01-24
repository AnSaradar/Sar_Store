import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sar_store1/widgets/widgets.dart';
import '../../models/models.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'SAR STORE'),
      bottomNavigationBar: CustomNavBar(),
      body: Column(
        children: [
          Container(
              child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: Category.categories
                .map((category) => HeroCarouselCard(category: category))
                .toList(),
          )),
          SectionTitle(
            title: "RECOMMENDED",
          ),
          ProductCarousel(products: Product.products.where((product) => product.isRecommended).toList(),),

          SectionTitle(
            title: "POPULAR",
          ),
          ProductCarousel(products: Product.products.where((product) => product.isPopular).toList(),)
        ],
      ),
    );
  }
}



