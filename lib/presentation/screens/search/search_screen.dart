import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freelance_platform_ui/core/themes/palette.dart';
import 'package:remixicon/remixicon.dart';

import '../widgets/top_app_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopAppBar(
                  title: 'Search',
                  subtitle: '',
                ),
                const SearchBar(),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/filter.svg'),
                    SizedBox(width: 10.w),
                    Text(
                      'Filters',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(fontSize: 16.sp),
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                JobCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  const JobCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 20.w),
              decoration: const BoxDecoration(
                  color: Color(0XFFEFEDF0),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 14.5,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Arlene Mckinney',
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        ?.copyWith(fontWeight: FontWeight.normal),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 10.w),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Palette.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Posted 3 days ago',
                      style: Theme.of(context).textTheme.caption),
                  SizedBox(height: 20.h),
                  Text('Create an application',
                      style: Theme.of(context).textTheme.headline3),
                  SizedBox(height: 20.h),
                  Text('Description',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(fontWeight: FontWeight.normal)),
                  SizedBox(height: 10.h),
                  const Text(
                      'We are a young startup from Paris looking for a designer who can help us design a tech oriented application. We are open to proposals.'),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('16 propositions',
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              ?.copyWith(fontSize: 12.8.sp)),
                      Text('\$ 2400',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0.sp,
                                  color: Palette.purple))
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: const [
                      Categories(text: 'ui/ux'),
                      SizedBox(width: 5),
                      Categories(text: 'design'),
                      SizedBox(width: 5),
                      Categories(text: 'figma'),
                      SizedBox(width: 5),
                      Categories(text: 'photoshop'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.w),
          border: Border.all(color: Palette.grey)),
      child: Text(
        text.toUpperCase(),
        style: Theme.of(context).textTheme.caption?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 12.8.sp,
            ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      height: 45.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              expands: true,
              maxLines: null,
              selectionHeightStyle: BoxHeightStyle.max,
              cursorHeight: 30.h,
              cursorColor: Palette.grey,
              decoration: const InputDecoration(
                  border: InputBorder.none, focusedBorder: InputBorder.none),
            ),
          ),
          const Icon(
            Remix.search_line,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
