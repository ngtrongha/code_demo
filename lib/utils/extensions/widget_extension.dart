import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension WidgetsExtension on Widget {
  InkWell onTap(
      {final void Function()? onTap, final void Function()? onDoubleTap}) {
    return InkWell(
      onTap: onTap,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      onDoubleTap: onDoubleTap,
      child: this,
    );
  }

  ElevatedButton elevatedButton({
    final void Function()? onPressed,
    final ButtonStyle? style,
    final bool enble = true,
    final double? radius,
    final double? height,
  }) {
    return ElevatedButton(
      onPressed: enble ? onPressed : () {},
      style: style?.copyWith(
              backgroundColor: !enble
                  ? MaterialStateProperty.all(Colors.blueAccent)
                  : style.backgroundColor) ??
          ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius ?? 16)),
            maximumSize: Size(ScreenUtil().screenWidth, height ?? 38),
            minimumSize: Size(ScreenUtil().screenWidth, height ?? 38),
          ).copyWith(
              backgroundColor: MaterialStateProperty.all(
                  enble ? Colors.blueAccent : Colors.grey.shade300)),
      child: this,
    );
  }
}
