import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/utils.dart';

class HeaderPopup extends StatelessWidget {
  const HeaderPopup(
      {super.key,
      required this.body,
      this.button,
      required this.title,
      this.onBack});
  final Widget body;
  final Widget? button;
  final String title;
  final void Function()? onBack;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      constraints: BoxConstraints(
          maxHeight: ScreenUtil().screenHeight * 0.9,
          maxWidth: ScreenUtil().screenWidth),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  onTap: onBack ?? Get.back,
                  child: const Icon(Icons.close),
                ),
              ),
              Expanded(
                flex: 6,
                child: title.titleMedium(textAlign: TextAlign.center),
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ).paddingOnly(top: 10, right: 10, left: 10, bottom: 10),
          const Divider(
            height: 0,
            thickness: 1,
          ),
          body,
          if (button != null) button!,
        ],
      ),
    );
  }
}
