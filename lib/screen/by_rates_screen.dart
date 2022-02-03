import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:ui_app/pod/icon_with_label.dart';
import 'package:ui_app/utils/assets_path.dart';

class ByRatesScreen extends StatelessWidget {
  const ByRatesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      primary: false,
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) => DottedBorder(
        color: Colors.red,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'YOUR E-VOUCHER RATE',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Image.asset(nextRedIcon),
                  ),
                ],
              ),
              Text(
                'Mobile App Special Voucher',
                style: Theme.of(context).textTheme.headline2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconsWithLabel(
                          onPressed: () {},
                          iconLabel: 'Inclusive of Breakfast',
                          iconPath: themeIcon,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        IconsWithLabel(
                          onPressed: () {},
                          iconLabel: 'Facilities',
                          iconPath: discountIcon,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 20,
                    ),
                    height: 50,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                            side: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                      child: Text(
                        'View Rates',
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                              color: Colors.red,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 2.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Avg.Nightly/ Room Form',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subject to GST & Services charge',
                          style:
                              Theme.of(context).textTheme.headline3!.copyWith(
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'SGD',
                                  style: Theme.of(context).textTheme.headline3),
                              TextSpan(
                                  text: '161.42',
                                  style: Theme.of(context).textTheme.headline2),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xFFFFDF77),
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      addIcon,
                      color: Colors.black,
                      width: 40,
                    ),
                    Text(
                      'MEMBER DEALS',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      separatorBuilder: (context, index) => SizedBox(
        height: 20,
      ),
    );
  }
}
