import 'package:flutter/material.dart';
import 'package:homework_end/data/products/products.dart';
import 'package:homework_end/utils/size/app_size.dart';

class PinnedViewHome extends SliverPersistentHeaderDelegate {
  PinnedViewHome({required this.selectedIndex});

  final int selectedIndex;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 100.h,
      color: Colors.black,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            allCategories.length,
            (index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 110.w,
                  decoration: BoxDecoration(
                    color: index == selectedIndex
                        ? Colors.grey
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(12.w),
                    border: Border.all(
                      width: 1.h,
                      color: Colors.white,
                    ),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
                  margin: EdgeInsets.only(right: 10.w),
                  child: Center(
                    child: Text(
                      allCategories[index].name,
                      style: TextStyle(
                        fontSize: 18.w,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                5.getH(),
                Container(
                  height: 5.h,
                  width: 110.w,
                  color: index == selectedIndex ? Colors.grey : Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 70.h;

  @override
  double get minExtent => 70.h;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
