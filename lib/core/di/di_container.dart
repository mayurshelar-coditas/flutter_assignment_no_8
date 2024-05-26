import 'package:assignment8/core/constants/constants.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setup() {
  Constants constants = Constants();

  locator.registerSingleton(constants);
}
