import 'package:flutter/material.dart';
import 'package:ui_app/utils/dimension.dart';

class IconsWithLabel extends StatelessWidget {
  final String iconPath;
  final String iconLabel;
  final Function onPressed;

  const IconsWithLabel({
    Key? key,
    required this.iconPath,
    required this.iconLabel,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MARGIN_XXLARGE,
          width: MARGIN_XXLARGE,
          child: IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {
              onPressed();
            },
            icon: Image.asset(iconPath),
          ),
        ),
        Container(
          width: 70,
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    iconLabel,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: TEXT_REGULAR_SMALL,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
