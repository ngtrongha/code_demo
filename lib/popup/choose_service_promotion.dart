import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/utils.dart';
import '../screens/promotion_service/bloc/promotion_services_bloc.dart';
import '../widget/header_popup.dart';
import '../widget/image_cached.dart';

class ChooseServicePromotion extends StatelessWidget {
  const ChooseServicePromotion({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PromotionServicesBloc, PromotionServicesState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<PromotionServicesBloc>(context);
        return HeaderPopup(
          title: 'Dịch vụ',
          button: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(color: Colors.black26, offset: Offset(0, -1))
                ],
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                Expanded(
                  child:
                      'Xác nhận'.bodyLarge(color: Colors.white).elevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                  ).marginSymmetric(horizontal: 5),
                ),
              ],
            ),
          ),
          body: Expanded(
            child: Column(
              children: [
                TextFormField(
                  controller: bloc.searchController,
                  style: Get.textTheme.bodyLarge!.copyWith(fontSize: 18.sp),
                  textInputAction: TextInputAction.go,
                  textAlignVertical: TextAlignVertical.center,
                  autofocus: true,
                  decoration: InputDecoration(
                      alignLabelWithHint: true,
                      hintText: 'Tìm',
                      suffixIcon: Icon(Icons.search)
                          .onTap(onTap: () => bloc.add(const OnRefresh()))
                          .marginOnly(top: 9, left: 9, bottom: 9)),
                ).marginSymmetric(horizontal: 10),
                Expanded(
                  child: state.isLoading
                      ? const CircularProgressIndicator()
                      : state.listService.isEmpty
                          ? const Placeholder()
                          : SmartRefresher(
                              controller: bloc.refreshController,
                              enablePullUp: true,
                              onRefresh: () =>
                                  bloc.add(StartedService(bloc.workplace_id)),
                              onLoading: () => bloc.add(const OnLoad()),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ...state.listServicePromotion.map((e) =>
                                        Container(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          decoration: const BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color: Colors.black26))),
                                          child: Row(
                                            children: [
                                              ImageCached(
                                                image: e.image,
                                                width: 40.sp,
                                                height: 40.sp,
                                              ).marginOnly(right: 10),
                                              Expanded(
                                                  child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  e.name
                                                      .bodyLarge()
                                                      .marginOnly(bottom: 5),
                                                  'Giá: ${Utils.moneyFormat(e.price)}'
                                                      .bodyMedium()
                                                ],
                                              )),
                                              Checkbox(
                                                value: true,
                                                activeColor: Colors.blue,
                                                onChanged: (value) =>
                                                    bloc.add(DeleteService(e)),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                              ),
                                            ],
                                          ),
                                        ).onTap(
                                          onTap: () =>
                                              bloc.add(DeleteService(e)),
                                        )),
                                    ...state.listService.map((e) {
                                      if (state.listServicePromotion.indexWhere(
                                              (element) =>
                                                  element.service_id == e.id) >=
                                          0) {
                                        return Container();
                                      }
                                      return Container(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        decoration: const BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.black26))),
                                        child: Row(
                                          children: [
                                            ImageCached(
                                              image: e.image,
                                              width: 40.sp,
                                              height: 40.sp,
                                            ).marginOnly(right: 10),
                                            Expanded(
                                                child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                e.name
                                                    .bodyLarge()
                                                    .marginOnly(bottom: 5),
                                                'Giá: ${Utils.moneyFormat(e.price)}'
                                                    .bodyMedium()
                                              ],
                                            )),
                                            Checkbox(
                                              value: false,
                                              activeColor: Colors.blue,
                                              onChanged: (value) =>
                                                  bloc.add(AddService(e)),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                            ),
                                          ],
                                        ),
                                      ).onTap(
                                          onTap: () => bloc.add(AddService(e)));
                                    })
                                  ],
                                ).marginAll(10),
                              ),
                            ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
