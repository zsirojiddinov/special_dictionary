import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:special_dictionary/ui/bottom_pages/cabinet.dart';
import 'package:special_dictionary/ui/bottom_pages/my_dictionary.dart';

import '../bloc/bottom_bar/navbar_bloc.dart';
import '../bloc/bottom_bar/navbar_event.dart';
import '../bloc/bottom_bar/navbar_state.dart';
import '../style/colors.dart';
import 'bottom_pages/all_dictionary.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late AppLocalizations appLocalizations;

  @override
  Widget build(BuildContext context) {
    appLocalizations = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (ctx) => NavBarBloc(),
      child: BlocBuilder<NavBarBloc, NavBarState>(
        builder: (ctx, state) {
          return Scaffold(
            body: SafeArea(
              child: state is MyDictionaryState
                  ? const MyDictionaryPage()
                  : state is AllDictionaryState
                      ? const AllDictionaryPage()
                      : const CabinetPage(),
            ),
            bottomNavigationBar: _bottomNavigationBar(ctx),
          );
        },
      ),
    );
  }

  _bottomNavigationBar(BuildContext context) {
    var bloc = BlocProvider.of<NavBarBloc>(context);
    return BlocBuilder<NavBarBloc, NavBarState>(
      builder: (ctx, state) {
        return BottomNavigationBar(
          backgroundColor: MyColor.backColor,
          onTap: (index) {
            BlocProvider.of<NavBarBloc>(context).add(
              ChangeEvent(
                index: index,
              ),
            );
          },
          selectedItemColor: Colors.grey[800],
          unselectedItemColor: Colors.grey,
          currentIndex: bloc.currentIndex,
          type: BottomNavigationBarType.fixed,
          items: _getItem(),
        );
      },
    );
  }

  _getItem() {
    return [
      BottomNavigationBarItem(
        label: appLocalizations.nav_my,
        icon: const Icon(FluentIcons.list_16_regular),
        activeIcon: const Icon(FluentIcons.list_16_filled),
      ),
      BottomNavigationBarItem(
        label: appLocalizations.nav_all,
        icon: const Icon(FluentIcons.apps_16_regular),
        activeIcon: const Icon(FluentIcons.apps_16_filled),
      ),
      BottomNavigationBarItem(
        label: appLocalizations.nav_cabinet,
        icon: const Icon(FluentIcons.settings_16_regular),
        activeIcon: const Icon(FluentIcons.settings_16_filled),
      ),
    ];
  }
}
