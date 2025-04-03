import 'dart:math';

/// lightweight unique id generator
String getUniqueId() {
  return "${DateTime.now().microsecondsSinceEpoch}-${Random().nextInt(99999)}";
}
