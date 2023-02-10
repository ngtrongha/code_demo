import 'package:code_demo/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../model/system_config/system_config.dart';
import '../screens/promotion_entry/bloc/promotion_entry_bloc.dart';
import '../widget/header_popup.dart';
import '../widget/image_cached.dart';

class PromotionTypePopup extends StatelessWidget {
  const PromotionTypePopup(
      {super.key, required this.listType, required this.wrokplace_id});
  final List<SystemConfig> listType;
  final int wrokplace_id;
  @override
  Widget build(BuildContext context) {
    var type = listType.first;
    return StatefulBuilder(builder: (context, setState) {
      return HeaderPopup(
        title: 'Loại mã giảm giá ',
        body: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: listType
                .map((e) => Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          color: e == type ? Colors.black26 : Colors.white,
                          border: const Border(
                              bottom: BorderSide(color: Colors.black26))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26),
                                shape: BoxShape.circle,
                                color: Colors.white),
                            child: ImageCached(
                              image: e.image,
                              width: 30.sp,
                              height: 30.sp,
                            ).marginAll(15),
                          ).marginOnly(right: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                e.name.titleMedium().marginOnly(bottom: 5),
                                e.description.bodySmall()
                              ],
                            ),
                          ),
                          Radio(
                              value: e,
                              groupValue: type,
                              activeColor: Colors.blue,
                              onChanged: (value) => setState(() => type = e))
                        ],
                      ),
                    ).onTap(
                      onTap: () => setState(() => type = e),
                    ))
                .toList(),
          ).paddingSymmetric(horizontal: 10),
        ),
        button: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(color: Colors.black26, offset: Offset(0, -1))
              ],
              borderRadius: BorderRadius.circular(8)),
          child: 'Tiếp theo'.bodyLarge(color: Colors.white).elevatedButton(
                onPressed: () =>
                    Get.offNamed(PromotionEntryScreen.path.pageParams({
                  'type_id': type.id.toString(),
                  'workplace_id': wrokplace_id.toString(),
                })),
              ),
        ),
      );
    });
  }
}
