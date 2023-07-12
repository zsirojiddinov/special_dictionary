import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:special_dictionary/style/colors.dart';
import 'package:special_dictionary/style/text_style.dart';
import 'package:special_dictionary/utils/dimens.dart';

class CabinetPage extends StatefulWidget {
  const CabinetPage({Key? key}) : super(key: key);

  @override
  State<CabinetPage> createState() => _CabinetPageState();
}

class _CabinetPageState extends State<CabinetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.backColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Sozlamalar",
          style: titleStyle,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: Dimens.width10),
        width: double.infinity,
        height: double.infinity,
        color: MyColor.backColor,
        child: Column(
          children: [
            _item(
              text: "Sirojiddinov Ziyoviddin",
              onTap: () {},
              icon: FluentIcons.person_20_regular,
              isProfile: true,
            ),
            Gap(Dimens.height10),
            Container(
              height: Dimens.height10 / 10,
              color: MyColor.lineColor,
            ),
            Gap(Dimens.height10),
            _item(
              text: "Mualliflar",
              onTap: () {},
              icon: FluentIcons.person_accounts_20_regular,
            ),
            _item(
              text: "To'lovlar",
              onTap: () {},
              icon: FluentIcons.payment_16_regular,
            ),
            _item(
              text: "Chegirmalar",
              onTap: () {},
              icon: FluentIcons.shopping_bag_arrow_left_20_regular,
            ),
            _item(
              text: "Interfeys tili",
              onTap: () {},
              icon: FluentIcons.local_language_16_regular,
            ),
            _item(
              text: "Dastur haqida",
              onTap: () {},
              icon: FluentIcons.apps_20_regular,
            ),
            _item(
              text: "Muroja'at qilish",
              onTap: () {},
              icon: FluentIcons.person_feedback_16_regular,
            ),
            Text(
              "Ilova versiyasi 1.0.0(1)",
              style: descriptionStyle,
            ),
          ],
        ),
      ),
    );
  }

  _item({
    required String text,
    required Function onTap,
    required IconData icon,
    bool isProfile = false,
  }) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        children: [
          Row(
            children: [
              isProfile ? Container() : Gap(Dimens.width10 / 2),
              CircleAvatar(
                backgroundColor: MyColor.iconBack,
                radius: isProfile ? Dimens.radius30 : Dimens.radius25,
                child: Icon(
                  icon,
                  color: MyColor.iconColor,
                  size: Dimens.iconSize16 * 2,
                ),
              ),
              Gap(isProfile ? Dimens.width10 : Dimens.width15),
              Text(
                text,
                style: textStyle,
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: MyColor.mainColor,
                size: isProfile ? Dimens.iconSize20 : Dimens.iconSize16,
              ),
            ],
          ),
          Gap(Dimens.height10),
        ],
      ),
    );
  }
}
