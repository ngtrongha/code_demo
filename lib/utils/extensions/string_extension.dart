import 'package:flutter/material.dart';
import 'package:get/get.dart';

String? enumToString(dynamic e) {
  if (e == null) {
    return null;
  }
  return e.toString().split('.').last;
}

extension StringsExtension on String {
  T? toEnum<T>(List<T> list) {
    try {
      final T item = list.firstWhere(
        (T e) {
          final String t = e.toString().split('.').last;
          return t == this;
        },
      );
      return item;
    } catch (_) {}
    return null;
  }

  String pageParams([Map<String, String?> params = const {}]) {
    var router = this;
    if (params.isNotEmpty) {
      params.forEach((key, value) {
        if (key == params.keys.first) {
          router = '$router?$key=$value';
        } else {
          router = '$router&$key=$value';
        }
      });
    }
    return router;
  }
}

extension TextExtension on String {
  Text bodyLarge({
    final Color? color,
    final double? fontSize,
    final FontWeight? fontWeight,
    final TextAlign? textAlign,
    final TextDecoration? decoration,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.bodyLarge!.copyWith(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: decoration),
    );
  }

  Text bodyMedium({
    final Color? color,
    final double? fontSize,
    final FontWeight? fontWeight,
    final TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.bodyMedium!
          .copyWith(color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }

  Text bodySmall({
    final Color? color,
    final double? fontSize,
    final FontWeight? fontWeight,
    final TextAlign? textAlign,
    final TextDecoration? decoration,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.bodySmall!.copyWith(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: decoration),
    );
  }

  Text titleLarge({
    final Color? color,
    final double? fontSize,
    final FontWeight? fontWeight,
    final TextAlign? textAlign,
    final TextDecoration? decoration,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.titleLarge!.copyWith(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: decoration),
    );
  }

  Text titleMedium({
    final Color? color,
    final double? fontSize,
    final FontWeight? fontWeight,
    final TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.titleMedium!
          .copyWith(color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }

  Text titleSmall({
    final Color? color,
    final double? fontSize,
    final FontWeight? fontWeight,
    final TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.titleSmall!
          .copyWith(color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }

  Text displayLarge({
    final Color? color,
    final double? fontSize,
    final FontWeight? fontWeight,
    final TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.displayLarge!
          .copyWith(color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }

  Text displayMedium({
    final Color? color,
    final double? fontSize,
    final FontWeight? fontWeight,
    final TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.displayMedium!
          .copyWith(color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }

  Text displaySmall({
    final Color? color,
    final double? fontSize,
    final FontWeight? fontWeight,
    final TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.displaySmall!
          .copyWith(color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }

  Text requiredText({
    final Color? color,
    final double? fontSize,
    final FontWeight? fontWeight,
  }) {
    return Text.rich(
      TextSpan(
          text: this,
          style: Get.textTheme.bodyLarge!.copyWith(
              color: color, fontSize: fontSize, fontWeight: fontWeight),
          children: [
            TextSpan(
              text: '*',
              style: Get.textTheme.bodyLarge!.copyWith(
                  color: Colors.red,
                  fontSize: fontSize,
                  fontWeight: fontWeight),
            )
          ]),
    );
  }
}
