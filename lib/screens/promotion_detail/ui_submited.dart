import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/utils.dart';
import '../../popup/service_group_promotion_view.dart';
import '../../popup/service_promotion_view.dart';
import '../../widget/image_cached.dart';
import '../../widget/photos_view/photos_view.dart';
import 'bloc/promotion_detail_bloc.dart';

class UISubmited extends StatelessWidget {
  const UISubmited({super.key, required this.bloc, required this.state});
  final PromotionDetailBloc bloc;
  final PromotionDetailState state;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            'Khuyến mãi #${state.promotion.id}'.titleLarge(color: Colors.white),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageCached(
                image: state.promotion.image,
                width: 78.sp,
                height: 78.sp,
              )
                  .onTap(
                      onTap: () => Get.to(() => PhotosViewWidget(
                          images: [state.promotion],
                          initImage: state.promotion)))
                  .marginOnly(right: 10),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  state.promotion.name.titleMedium().marginOnly(bottom: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        size: 24.sp,
                        color: bloc.checkexistDateColor(
                            state.promotion.to_date ?? DateTime.now()),
                      ).marginOnly(right: 5),
                      bloc
                          .checkexistDate(
                              state.promotion.to_date ?? DateTime.now())
                          .bodyMedium(
                              color: bloc.checkexistDateColor(
                                  state.promotion.to_date ?? DateTime.now()))
                    ],
                  ).marginOnly(bottom: 3),
                  Row(
                    children: [
                      if (state.promotion.active)
                        Icon(
                          Icons.pause,
                          size: 24.sp,
                          color: bloc.checkexistDateColor(
                              state.promotion.to_date ?? DateTime.now()),
                        )
                            .onTap(
                              onTap: () => bloc.add(const Active()),
                            )
                            .marginOnly(right: 10)
                      else
                        Icon(
                          Icons.play_arrow,
                          size: 24.sp,
                          color: bloc.checkexistDateColor(
                              state.promotion.to_date ?? DateTime.now()),
                        )
                            .onTap(
                              onTap: () => bloc.add(const Active()),
                            )
                            .marginOnly(right: 10),
                      if (state.promotion.approved_key ==
                          'admin.approved.waiting')
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 3, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.replay_rounded,
                                color: Colors.grey.shade300,
                                size: 15.sp,
                              ).marginOnly(right: 5),
                              'Chờ duyệt'.bodySmall()
                            ],
                          ),
                        )
                      else if (state.promotion.approved_key ==
                          'admin.approved.ok')
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 3, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius: BorderRadius.circular(100)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.check,
                                color: Colors.green,
                                size: 15.sp,
                              ).marginOnly(right: 5),
                              'Đã duyệt'.bodySmall(color: Colors.green)
                            ],
                          ),
                        )
                      else if (state.promotion.approved_key ==
                          'admin.approved.failed')
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 3, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.red.shade100,
                              borderRadius: BorderRadius.circular(100)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.close,
                                size: 15.sp,
                                color: Colors.red,
                              ).marginOnly(right: 5),
                              'Hủy'.bodySmall(color: Colors.red)
                            ],
                          ),
                        ),
                    ],
                  ).marginSymmetric(vertical: 5)
                ],
              ))
            ],
          ),
          const Divider(
            color: Colors.black12,
          ),
          Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Text.rich(
                    TextSpan(
                        text: '${state.promotion.total_using}',
                        style: Get.textTheme.titleMedium,
                        children: [
                          TextSpan(
                              text: '/${state.promotion.amount}',
                              style: Get.textTheme.bodySmall)
                        ]),
                  ),
                  'Đã sử dụng'.bodyMedium(),
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Text.rich(
                    TextSpan(
                        text: '${state.promotion.total_expired}',
                        style: Get.textTheme.titleMedium,
                        children: [
                          TextSpan(
                              text: '/${state.promotion.total_all}',
                              style: Get.textTheme.bodySmall)
                        ]),
                  ),
                  'Hết hạn/Sưu tầm'.bodyMedium(),
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Utils.moneyFormat(state.promotion.total_all).titleMedium(),
                  'Tổng tiền giảm'.bodyMedium(),
                ],
              ))
            ],
          ),
          const Divider(
            color: Colors.black12,
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black26))),
            child: Row(
              children: ['Tham gia', 'Thông tin']
                  .map((e) => Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: e == state.tab
                                          ? Colors.blue
                                          : Colors.white,
                                      width: e == state.tab ? 3 : 0))),
                          child: e.bodyMedium(textAlign: TextAlign.center),
                        ).onTap(
                          onTap: () => bloc.add(ChangeTab(e)),
                        ),
                      ))
                  .toList(),
            ),
          ),
          if (state.tab == 'Tham gia')
            Row(
              children: [
                const Icon(
                  Icons.search,
                  color: Colors.black,
                ).marginOnly(right: 4),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(hintText: 'Search...'),
                  ),
                )
              ],
            ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                if (state.tab == 'Tham gia')
                  Column(
                    children: state.listCustomer
                        .map((e) => Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.black12, width: 0.5))),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        const CachedNetworkImageProvider(
                                            avatarDefault),
                                    radius: 30.sp,
                                  ).marginOnly(right: 10),
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          'Nguyễn Văn Tấn'
                                              .titleMedium(color: Colors.black),
                                          Utils.moneyFormat(75000).bodyLarge()
                                        ],
                                      ).marginOnly(bottom: 5),
                                      '#344 - 22:48 23-11-20'.bodyMedium(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.schedule_rounded,
                                                color: Colors.black,
                                                size: 15.sp,
                                              ).marginOnly(right: 5),
                                              '22:48 23-11-20'.bodySmall()
                                            ],
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 3, horizontal: 8),
                                            decoration: BoxDecoration(
                                                color: Colors.green.shade100,
                                                borderRadius:
                                                    BorderRadius.circular(100)),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.circle,
                                                  color: Colors.green,
                                                  size: 15.sp,
                                                ).marginOnly(right: 5),
                                                'Đã sử dụng'.bodySmall(
                                                    color: Colors.green)
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                            ))
                        .toList(),
                  )
                else
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                              Utils.dateToString(
                                      'dd/MM/yyyy',
                                      state.promotion.from_date ??
                                          DateTime.now())
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
                                Utils.dateToString(
                                        'dd/MM/yyyy',
                                        state.promotion.open_date ??
                                            DateTime.now())
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    'Nhóm dịch vụ (${state.promotion.service_group_list.length})'
                                        .bodyLarge(),
                                    const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.black,
                                    )
                                  ],
                                ).onTap(
                                  onTap: () => Get.bottomSheet(
                                      ServiceGroupPromotionView(
                                        datas:
                                            state.promotion.service_group_list,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    'Dịch vụ (${state.promotion.service_list.length})'
                                        .bodyLarge(),
                                    const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.black,
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
                              state.promotion.number_used
                                  .toString()
                                  .bodyLarge(),
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
                            'Hình ảnh'
                                .bodyMedium()
                                .marginSymmetric(vertical: 10),
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
                                            onTap: () => Get.to(() =>
                                                PhotosViewWidget(
                                                    images: state
                                                        .promotion.media_list,
                                                    initImage: image)),
                                          )
                                          .marginOnly(right: 8))
                                  .toList()
                                ..addIf(
                                    state.promotion.media_list.length > 5,
                                    InkWell(
                                      overlayColor: MaterialStateProperty.all(
                                          Colors.transparent),
                                      child: Row(
                                        children: [
                                          Text(
                                            '+${state.promotion.media_list.length - 5}',
                                            style: Get.textTheme.bodySmall!
                                                .copyWith(),
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
                  )
              ],
            ),
          ))
        ],
      ).marginAll(10)),
    );
  }
}
