import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';

import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../../utils/dimens.dart';

void showMessage(context, String message) {
  AppLocalizations appLocalizations = AppLocalizations.of(context)!;
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        padding: EdgeInsets.all(Dimens.height10),
        height: Dimens.height30 * 4,
        decoration: BoxDecoration(
          color: MyColor.mainColor,
          borderRadius: BorderRadius.all(
            Radius.circular(Dimens.height15),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Icon(
                Icons.error_outline,
                size: Dimens.iconSize16 * 2,
              ),
            ),
            Expanded(
              flex: 9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    appLocalizations.diqqat,
                    style: titleStyle.copyWith(fontSize: Dimens.font16),
                    textAlign: TextAlign.justify,
                  ),
                  Gap(Dimens.height10),
                  Expanded(
                    child: Text(
                      message,
                      style: textStyle.copyWith(fontSize: Dimens.font12),
                      textAlign: TextAlign.justify,
                      //   overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      behavior: SnackBarBehavior.floating,
      // duration: Duration(seconds: 3),
      backgroundColor: Colors.transparent,
      elevation: Dimens.height30 * 3,
    ),
  );
}
