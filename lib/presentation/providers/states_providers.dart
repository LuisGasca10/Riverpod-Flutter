import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'states_providers.g.dart';

@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  int build() => 6;

  void incraseByOne() => state++;
}

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;

  void toggle() => state = !state;
}

@Riverpod(keepAlive: true)
class Username extends _$Username {
  @override
  String build() => 'Guillermo Gasca';

  void changeUsername(String newUsername) => state = newUsername;
}
