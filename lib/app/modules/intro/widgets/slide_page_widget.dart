import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:imc_app/app/core/consts/colors_const.dart';

class SlidePageWidget extends StatelessWidget {
  final String text;
  final String asset;

  const SlidePageWidget({Key key, this.text = '', this.asset = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          text,
          textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.headline6.copyWith(
                color: ColorsConst.grey600,
              ),
        ),
        Align(
            child: SvgPicture.asset(
          asset,
          height: MediaQuery.of(context).size.height * 0.3,
        ))
      ],
    );
  }
}
