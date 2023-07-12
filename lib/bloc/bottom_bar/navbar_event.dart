import 'package:flutter/foundation.dart';

@immutable
abstract class NavBarEvent {}

class ChangeEvent extends NavBarEvent {
  var index;

  ChangeEvent({
    required this.index,
  });
}
