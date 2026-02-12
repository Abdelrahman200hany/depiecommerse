import 'package:flutter/material.dart';
import 'package:minecommerse/view/custom_widgets/carousel_slider.dart';
// import 'package:minecommerse/view/custom_widgets/grid_list.dart';
import 'package:minecommerse/view/custom_widgets/search_feild.dart';
import 'package:minecommerse/view/custom_widgets/sliver_list.dart';
import 'package:minecommerse/view/custom_widgets/switch_bottom.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String route = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Food Delivary',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CustomSearchAppBar()),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(child: CarsuselSliderlist()),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Feature Item ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(child: SwitchBottom()),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            CustomSliverList(),
          ],
        ),
      ),
    );
  }
}
//
