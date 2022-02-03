import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_app/pod/app_color.dart';
import 'package:ui_app/pod/custom_clipper.dart';
import 'package:ui_app/pod/icon_with_label.dart';
import 'package:ui_app/pod/k_carousel.dart';
import 'package:ui_app/presenter/home_presenter.dart';
import 'package:ui_app/screen/by_rates_screen.dart';
import 'package:ui_app/screen/by_room_screen.dart';
import '../utils/assets_path.dart';
import '../utils/dimension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(
          MARGIN_MEDIUM_2,
        ),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,

          scrollDirection: Axis.vertical,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xFFFF7C6E),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(MARGIN_SMALL),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(sgdCurrencyIcon),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(chatActiveIcon),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 4,
                  child: Text(
                    'Furama Riverfront, Singapore',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(nextRedIcon),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: MARGIN_MEDIUM,
                    top: MARGIN_MEDIUM,
                  ),
                  child: Text(
                    '405 Havenlock Road, Singapore 169633',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: TEXT_REGULAR_2X,
                        ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(currentLocationIcon),
                ),
              ],
            ),
            ChangeNotifierProvider<HomePresenter>(
              create: (context) => HomePresenter(),
              child: Consumer<HomePresenter>(
                builder: (context, hPresenter, child) => Stack(
                  children: [
                    Kcarousel(carouselImage: hPresenter.carouselImages),
                    Positioned(
                      right: MARGIN_MEDIUM,
                      bottom: 0,
                      child: ClipPath(
                        clipper: MyClipper(),
                        child: Container(
                          width: 120,
                          height: 30,
                          color: Colors.black.withOpacity(0.6),
                          child: Center(
                            child: Text(
                              'See All 2/26',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: MARGIN_MEDIUM,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconsWithLabel(
                    onPressed: () {},
                    iconLabel: 'Amenities',
                    iconPath: themeIcon,
                  ),
                  IconsWithLabel(
                    onPressed: () {},
                    iconLabel: 'Facilities',
                    iconPath: facilitiesIcon,
                  ),
                  IconsWithLabel(
                    onPressed: () {},
                    iconLabel: 'F&B',
                    iconPath: fNbIcon,
                  ),
                  IconsWithLabel(
                    onPressed: () {},
                    iconLabel: 'Kid/Family',
                    iconPath: kidsFamilyIcon,
                  ),
                  IconsWithLabel(
                    onPressed: () {},
                    iconLabel: 'Welleness',
                    iconPath: wellnessIcon,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: MARGIN_LARGE,
              ),
              child: Container(
                height: 300,
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ButtonsTabBar(
                          backgroundColor: AppColor().secondaryColor,
                          unselectedBackgroundColor: Colors.white,
                          tabs: [
                        Tab(
                          child: ClipPath(
                            clipper: MyClipper(),
                            child: Container(
                              width: 120,
                              height: 30,
                              color: Colors.black.withOpacity(0.6),
                              child: Center(
                                child: Text(
                                  'By Room',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: ClipPath(
                            clipper: MyClipper(),
                            child: Container(
                              width: 120,
                              height: 30,
                              color: Colors.black.withOpacity(0.6),
                              child: Center(
                                child: Text(
                                  'By Rates',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                      Expanded(child: TabBarView(children: [
                        ByRoomScreen(),
                        ByRatesScreen()
                      ],),),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
