import 'dart:convert';

import 'package:flutter_ty_mobile/core/error/exceptions.dart';
import 'package:flutter_ty_mobile/utils/string_util.dart';

class JsonDecodeUtil {
  /// trim json [str] to prevent data error while decoding
  static String trimJson(dynamic str) {
    final trimRegex = RegExp(r"\s+\b|\b\s|\n|\r\n|\r|\s|\t");

    String strBody = """$str""".replaceAll(trimRegex, "");
//    print("trimmed: $strBody");
    if (strBody.isHtmlFormat) throw LocationException();
    return strBody;
  }

  /// Decode json array [str] into List
  static List<dynamic> decodeArray(dynamic str) {
    final jsonString = trimJson(str);
    try {
      JsonCodec codec = new JsonCodec();
//      print('Decoding String: $jsonString');
      var decoded = codec.decode(jsonString);
//      print("Decoded type: ${decoded.runtimeType} Json: $decoded");
      return decoded;
    } catch (e) {
      throw JsonFormatException(jsonString);
    }
  }
}
