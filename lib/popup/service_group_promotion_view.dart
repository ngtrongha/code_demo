import 'package:flutter/material.dart';

import '../../../../utils/utils.dart';
import '../model/promotion_model/promotion_model.dart';
import '../widget/header_popup.dart';

class ServiceGroupPromotionView extends StatelessWidget {
  const ServiceGroupPromotionView({super.key, required this.datas});
  final List<ServicePromotion> datas;
  @override
  Widget build(BuildContext context) {
    return HeaderPopup(
      title: 'Nhóm dịch vụ',
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
                          Expanded(child: e.name.bodyLarge()),
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
