import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_platform_ui/core/themes/palette.dart';
import 'package:remixicon/remixicon.dart';

import '../widgets/top_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const TopAppBar(title: 'Profile', subtitle: ''),
          Row(
            children: [
              const CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage('assets/images/avatar1.png'),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(
                width: 5.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dustin Warren',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text('UX Designer',
                      style: Theme.of(context).textTheme.bodyText2),
                ],
              )
            ],
          ),
          SizedBox(height: 20.h),
          Text(
            'Description',
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(height: 10.h),
          const Text(
            'My name is Dustin, I’m a young designer from Dublin. I practice for 4 years now, worked with small and big agencies.Blablabla',
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('64 reviews', style: Theme.of(context).textTheme.headline4),
              Column(
                children: [
                  Text(
                    'Average rating',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Row(
                      children: List.generate(
                          5,
                          (index) => Icon(
                                Remix.star_fill,
                                color: Palette.purple,
                              )))
                ],
              )
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Last Review',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Text(
                    'Awesome job!',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text('- Kyle Wilson',
                      style: Theme.of(context).textTheme.caption?.copyWith(
                            fontStyle: FontStyle.italic,
                            color: Palette.black,
                          )),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(5),
                color: Palette.purple.shade200,
                child: Text(
                  'View All',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(height: 20.h),
          Text(
            'Portfoliio',
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(height: 10.h),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            children: const [
              PortfolioCard(
                image: 'assets/images/1.png',
              ),
              PortfolioCard(
                image: 'assets/images/2.png',
              ),
              PortfolioCard(
                image: 'assets/images/3.png',
              ),
              PortfolioCard(
                image: 'assets/images/4.png',
              ),
            ],
          )
        ]),
      ))),
    );
  }
}

class PortfolioCard extends StatelessWidget {
  const PortfolioCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
