// ignore_for_file: constant_identifier_names

import 'package:envied/envied.dart';

//! incase the below file gets deleted, first delete the pubspec.lock
//! file and then run the command "dart run build_runner build --delete-conflicting-outputs" in the terminal
//! also make sure to add the "envied_generator" package to dev-dependency file in the root of the project

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'DEVELOPMENT_BASE_URL')
  static const String developmentBaseUrl = _Env.developmentBaseUrl;
}
