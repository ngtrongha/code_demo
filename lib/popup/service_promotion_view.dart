import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/utils.dart';
import '../model/promotion_model/promotion_model.dart';
import '../widget/header_popup.dart';
import '../widget/image_cached.dart';

class ServicePromotionView extends StatelessWidget {
  const ServicePromotionView({super.key, required this.datas});
  final List<ServicePromotion> datas;
  @override
  Widget build(BuildContext context) {
    return HeaderPopup(
      title: 'Dịch vụ',
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: datas
                .map((e) => Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.black26))),
                      child: Row(
                        children: [
                          ImageCached(
                            image: e.image,
                            width: 40.sp,
                            height: 40.sp,
                          ).marginOnly(right: 10),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              e.name.bodyLarge().marginOnly(bottom: 5),
                              'Giá: ${Utils.moneyFormat(e.price)}'.bodyMedium()
                            ],
                          )),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
