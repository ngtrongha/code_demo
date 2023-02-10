import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../utils/utils.dart';
import '../screens/promotion_service_groups/bloc/promotion_service_groups_bloc.dart';
import '../widget/header_popup.dart';

class ChooseServiceGroupPromotion extends StatelessWidget {
  const ChooseServiceGroupPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PromotionServiceGroupsBloc, PromotionServiceGroupsState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<PromotionServiceGroupsBloc>(context);
        return HeaderPopup(
          title: 'Nhóm dịch vụ',
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...state.listServiceGroupPromotion.map((e) => Container(
                        padding: const EdgeInsets.only(left: 10),
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black26))),
                        child: Row(
                          children: [
                            Expanded(child: e.name.bodyLarge()),
                            Checkbox(
                              value: true,
                              activeColor: Colors.blue,
                              onChanged: (value) {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                          ],
                        ),
                      ).onTap(
                        onTap: () => bloc.add(DeleteGroup(e)),
                      )),
                  ...state.listGroup.map((e) {
                    if (state.listServiceGroupPromotion.indexWhere(
                            (element) => element.service_group_id == e.id) >=
                        0) {
                      return Container();
                    }
                    return Container(
                      padding: const EdgeInsets.only(left: 10),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.black26))),
                      child: Row(
                        children: [
                          Expanded(child: e.name.bodyLarge()),
                          Checkbox(
                            value: false,
                            activeColor: Colors.blue,
                            onChanged: (value) => bloc.add(AddGroup(e)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ],
                      ),
                    ).onTap(onTap: () => bloc.add(AddGroup(e)));
                  })
                ],
              ).marginAll(10),
            ),
          ),
        );
      },
    );
  }
}
