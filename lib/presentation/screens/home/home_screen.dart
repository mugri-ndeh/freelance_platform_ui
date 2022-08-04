import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_platform_ui/core/themes/palette.dart';
import 'package:remixicon/remixicon.dart';

import '../widgets/top_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

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
                  title: 'Feed',
                  subtitle: 'Resume',
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 250.h,
                        width: 200.w,
                        child: DChartBar(
                          data: const [
                            {
                              'id': 'Bar',
                              'data': [
                                {'domain': '2020', 'measure': 1},
                                {'domain': '2021', 'measure': 1.5},
                                {'domain': '2022', 'measure': 1.8},
                                {'domain': '2023', 'measure': 1.35},
                              ],
                            },
                          ],
                          domainLabelPaddingToAxisLine: 16,
                          axisLineTick: 2,
                          axisLinePointTick: 2,
                          axisLinePointWidth: 10,
                          domainLabelFontSize: 0,
                          measureLabelFontSize: 0,
                          axisLineColor: Colors.transparent,
                          measureLabelPaddingToAxisLine: 16,
                          barColor: (barData, index, id) =>
                              barData['measure'] == 1.35
                                  ? Palette.purple
                                  : Palette.purple.shade200,
                          showBarValue: false,
                          barValueColor: Palette.purple.shade200,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Gains',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(fontSize: 18.sp),
                          ),
                          Text(
                            '27K',
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                ?.copyWith(
                                    fontSize: 60.7.sp, color: Palette.black),
                          ),
                          Row(
                            children: [
                              const Icon(Remix.arrow_drop_down_fill),
                              Text('18%',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      ?.copyWith(fontSize: 18))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Active Projects',
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          fontSize: 25.sp, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Palette.purple.shade200,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'View All',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 16.sp, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                const DashboardCard(
                  title: 'Wireframes',
                  subtitle: 'Francisco Fischer',
                  status: 'Active',
                ),
                SizedBox(height: 16.h),
                const DashboardCard(
                  title: 'Need a new logo',
                  subtitle: 'Amel Rio',
                  status: 'Pending',
                ),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.status,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(subtitle, style: Theme.of(context).textTheme.caption),
                Text(status, style: Theme.of(context).textTheme.caption),
              ],
            ),
          ],
        ));
  }
}
