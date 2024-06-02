import 'package:flutter/material.dart';
import 'package:homework_end/data/products/products.dart';
import 'package:homework_end/screens/widgets/pinned_view.dart';
import 'package:homework_end/screens/widgets/product_item.dart';
import 'package:homework_end/utils/size/app_size.dart';

class CustomScrollViewExample extends StatefulWidget {
  const CustomScrollViewExample({super.key});

  @override
  State<CustomScrollViewExample> createState() =>
      _CustomScrollViewExampleState();
}

class _CustomScrollViewExampleState extends State<CustomScrollViewExample> {
  ScrollController _scrollController = ScrollController();

  void _scrollListener() {
    setState(() {
       selectedIndex = (_scrollController.offset / itemSize).round() + 1;
    });
  }

  final itemSize = 350.0;
  int selectedIndex = 0;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    debugPrint("============ SelectedIndex $selectedIndex ============");

    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.black,
            expandedHeight: 300.h,
            leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.accessibility_new_sharp,
                    color: Colors.white, size: 24.w)),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                  "https://www.freecodecamp.org/news/content/images/size/w2000/2022/06/helloWorld.png",
                  fit: BoxFit.cover),
              title: Text("Custom school view",
                  style: TextStyle(fontSize: 18.w, color: Colors.white)),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share, color: Colors.white, size: 24.w)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.face, color: Colors.white, size: 24.w)),
            ],
          ),
          SliverPersistentHeader(
            delegate: PinnedViewHome(selectedIndex: selectedIndex),
            pinned: true,
            floating: false,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: ProductItem(
                    img: allProducts[index].imagePath,
                    name: allProducts[index].name,
                    description: allProducts[index].description,
                  ),
                );
              },
              childCount: allProducts.length,
            ),
          ),
        ],
      ),
    );
  }
}
