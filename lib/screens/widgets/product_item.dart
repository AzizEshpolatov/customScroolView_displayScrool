import 'package:flutter/material.dart';
import '../../utils/size/app_size.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.img,
    required this.name,
    required this.description,
  });

  final String img;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width - 30.w,
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
      margin: EdgeInsets.symmetric(vertical: 7.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.w),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 6.w,
              offset: const Offset(4, 4),
              color: Colors.grey.withOpacity(.5)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            img,
            height: 120.h,
            width: 120.w,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 20.w,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 150.w,
                child: Text(
                  description,
                  style: TextStyle(
                    fontSize: 18.w,
                    fontWeight: FontWeight.normal,
                  ),
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios_sharp,
            color: Colors.black.withOpacity(.5),
          ),
        ],
      ),
    );
  }
}
