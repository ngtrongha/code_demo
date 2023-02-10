import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/utils.dart';
import '../../popup/service_group_promotion_view.dart';
import '../../popup/service_promotion_view.dart';
import '../../widget/image_cached.dart';
import '../../widget/photos_view/photos_view.dart';
import '../promotion_entry/bloc/promotion_entry_bloc.dart';
import 'bloc/promotion_detail_bloc.dart';

class UIWattingSubmit extends StatelessWidget {
  const UIWattingSubmit({super.key, required this.bloc, required this.state});
  final PromotionDetailBloc bloc;
  final PromotionDetailState state;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            'Khuyến mãi #${state.promotion.id}'.titleLarge(color: Colors.white),
        actions: [
          const Icon(
            Icons.edit,
            color: Colors.white,
          )
              .onTap(
                onTap: () async =>
                    await Get.toNamed(PromotionEntryScreen.path.pageParams({
                  'id': state.promotion.id.toString(),
                  'type_id': state.promotion.type_id.toString(),
                  'workplace_id': state.promotion.workplace_id.toString(),
                }))!
                        .whenComplete(() => bloc.add(const Started())),
              )
              .marginOnly(right: 10)
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: double.infinity,
                color: Colors.black.withOpacity(0.18),
                padding: const EdgeInsets.all(10),
                child: 'Thông tin cơ bản'.bodyLarge()),
            if (state.promotion.image.isEmpty)
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: 120.sp,
                  height: 120.sp,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(4)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.camera).marginOnly(bottom: 5),
                      'Hình ảnh đại diện'.displayMedium()
                    ],
                  ),
                ),
              )
            else
              Center(
                child: ImageCached(
                  image: state.promotion.image,
                  width: 120.sp,
                  height: 120.sp,
                )
                    .onTap(
                        onTap: () => Get.to(() => PhotosViewWidget(
                            images: [state.promotion],
                            initImage: state.promotion)))
                    .marginSymmetric(vertical: 10),
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                'Tên mã giảm giá '.bodyMedium().marginOnly(bottom: 8),
                state.promotion.name.bodyLarge(),
                const Divider(
                  thickness: 0.5,
                  color: Colors.black26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    'Mã giảm giá  '.bodyMedium(),
                    state.promotion.code.bodyLarge(),
                  ],
                ).marginSymmetric(vertical: 5),
                const Divider(
                  thickness: 0.5,
                  color: Colors.black26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    'Kiểm duyệt'.bodyMedium(),
                    state.promotion.approved_text.bodyLarge(),
                  ],
                ).marginSymmetric(vertical: 5),
                const Divider(
                  thickness: 0.5,
                  color: Colors.black26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    'Thời gian bắt đầu'.bodyMedium(),
                    Utils.dateToString('dd/MM/yyyy',
                            state.promotion.from_date ?? DateTime.now())
                        .bodyLarge(),
                  ],
                ).marginSymmetric(vertical: 5),
                const Divider(
                  thickness: 0.5,
                  color: Colors.black26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    'Thời gian kết thúc'.bodyMedium(),
                    Utils.dateToString('dd/MM/yyyy',
                            state.promotion.to_date ?? DateTime.now())
                        .bodyLarge(),
                  ],
                ).marginSymmetric(vertical: 5),
                const Divider(
                  thickness: 0.5,
                  color: Colors.black26,
                ),
                if (state.promotion.type_time_key ==
                    'agent.discount.type.time.dynamic')
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      'Thời gian sưu tầm'.bodyMedium(),
                      Utils.dateToString('dd/MM/yyyy',
                              state.promotion.open_date ?? DateTime.now())
                          .bodyLarge(),
                    ],
                  ).marginSymmetric(vertical: 5)
                else if (state.promotion.type_time_key ==
                    'agent.discount.type.time.fixed')
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      'Sử dụng trong khoảng (h)'.bodyMedium(),
                      '${state.promotion.time_lapse} giờ'.bodyLarge(),
                    ],
                  ).marginSymmetric(vertical: 5),
                const Divider(
                  thickness: 0.5,
                  color: Colors.black26,
                ),
                if (state.promotion.scope_object_key ==
                    'discount.scope.servicegroup')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      'Phạm vi áp dụng chương trình'
                          .bodyMedium()
                          .marginOnly(bottom: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          'Nhóm dịch vụ (${state.promotion.service_group_list.length})'
                              .bodyLarge(),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                          )
                        ],
                      ).onTap(
                        onTap: () => Get.bottomSheet(
                            ServiceGroupPromotionView(
                              datas: state.promotion.service_group_list,
                            ),
                            isScrollControlled: true),
                      ),
                    ],
                  )
                else if (state.promotion.scope_object_key ==
                    'discount.scope.service')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      'Phạm vi áp dụng chương trình'
                          .bodyMedium()
                          .marginOnly(bottom: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          'Dịch vụ (${state.promotion.service_list.length})'
                              .bodyLarge(),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                          )
                        ],
                      ).onTap(
                        onTap: () => Get.bottomSheet(
                            ServicePromotionView(
                              datas: state.promotion.service_list,
                            ),
                            isScrollControlled: true),
                      ),
                    ],
                  ),
                const Divider(
                  thickness: 0.5,
                  color: Colors.black26,
                ),
              ],
            ).marginSymmetric(horizontal: 10),
            Container(
                    width: double.infinity,
                    color: Colors.black.withOpacity(0.18),
                    padding: const EdgeInsets.all(10),
                    child: 'Thiết lập mức giảm'.bodyLarge())
                .marginOnly(bottom: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    'Giá trị đơn hàng đạt tới '.bodyMedium(),
                    Utils.moneyFormat(state.promotion.min_order_value)
                        .bodyLarge(),
                  ],
                ).marginSymmetric(vertical: 5),
                const Divider(
                  thickness: 0.5,
                  color: Colors.black26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    'Số tiền giảm'.bodyMedium(),
                    Utils.moneyFormat(state.promotion.discount_value)
                        .bodyLarge(),
                  ],
                ).marginSymmetric(vertical: 5),
                const Divider(
                  thickness: 0.5,
                  color: Colors.black26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    'Số lượng mã giảm giá'.bodyMedium(),
                    state.promotion.amount.toString().bodyLarge(),
                  ],
                ).marginSymmetric(vertical: 5),
                const Divider(
                  thickness: 0.5,
                  color: Colors.black26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    'Số lượt sử dụng cho mỗi khách'.bodyMedium(),
                    state.promotion.number_used.toString().bodyLarge(),
                  ],
                ).marginSymmetric(vertical: 5),
                const Divider(
                  thickness: 0.5,
                  color: Colors.black26,
                ),
                'Quy định'.bodyMedium().marginOnly(bottom: 8),
                Html(
                  data: state.promotion.description,
                  shrinkWrap: true,
                ),
                const Divider(
                  thickness: 0.5,
                  color: Colors.black26,
                ),
                if (state.promotion.media_list.isNotEmpty)
                  'Hình ảnh'.bodyMedium().marginSymmetric(vertical: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: state.promotion.media_list
                        .map((image) => ImageCached(
                              image: image.image,
                              width: 68.sp,
                              height: 68.sp,
                            )
                                .onTap(
                                  onTap: () => Get.to(() => PhotosViewWidget(
                                      images: state.promotion.media_list,
                                      initImage: image)),
                                )
                                .marginOnly(right: 8))
                        .toList()
                      ..addIf(
                          state.promotion.media_list.length > 5,
                          InkWell(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            child: Row(
                              children: [
                                Text(
                                  '+${state.promotion.media_list.length - 5}',
                                  style: Get.textTheme.bodySmall!
                                      .copyWith(color: Colors.black),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 20.sp,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          )),
                  ).marginOnly(bottom: 4),
                ),
              ],
            ).marginSymmetric(horizontal: 10)
          ],
        ),
      )),
    );
  }
}
