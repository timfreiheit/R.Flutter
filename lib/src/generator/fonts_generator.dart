import 'package:r_flutter/src/generator/generator.dart';
import 'package:r_flutter/src/model/dart_class.dart';

DartClass? generateFontClass(List<String> fonts) {
  if (fonts.isEmpty) {
    return null;
  }
  final classString = StringBuffer("class Fonts {\n");
  for (final font in fonts) {
    classString.writeln(
        "  static const String ${createVariableName(font)} = \"$font\";");
  }
  classString.writeln("}");
  return DartClass(code: classString.toString());
}
