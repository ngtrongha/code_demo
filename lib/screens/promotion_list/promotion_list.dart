part of 'bloc/promotion_list_bloc.dart';

class PromotionListScreen extends StatelessWidget {
  const PromotionListScreen({super.key});

  static String get path => '/promotion_list';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PromotionListBloc()..add(const Started()),
      child: BlocBuilder<PromotionListBloc, PromotionListState>(
        builder: (context, state) {
          final bloc = BlocProvider.of<PromotionListBloc>(context);
          return Scaffold(
            appBar: state.isSearch
                ? PreferredSize(
                    preferredSize: AppBar().preferredSize,
                    child: Material(
                      color: Colors.blue,
                      child: TextFormField(
                        controller: bloc.searchController,
                        style: Get.textTheme.bodyLarge!
                            .copyWith(color: Colors.white),
                        textInputAction: TextInputAction.go,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            alignLabelWithHint: true,
                            hintText: AppLocalizations.of(context)!.search,
                            hintStyle: Get.textTheme.bodyLarge!
                                .copyWith(color: Colors.white38),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            prefixIcon: SvgPicture.asset(
                              AppSVG.exit,
                              color: Colors.white,
                            ).onTap(onTap: () {
                              bloc.add(const IsSearch());
                              bloc.add(const OnRefresh());
                            }).marginOnly(top: 10, right: 16, bottom: 10),
                            suffixIcon: SvgPicture.asset(
                              AppSVG.searchFill,
                              color: Colors.white,
                            )
                                .onTap(onTap: () => bloc.add(const OnRefresh()))
                                .marginOnly(top: 9, left: 9, bottom: 9)),
                      )
                          .marginSymmetric(vertical: 5, horizontal: 10)
                          .marginOnly(top: ScreenUtil().statusBarHeight),
                    ),
                  )
                : AppBar(
                    title: 'Khuyến mãi'.titleLarge(color: Colors.white),
                    actions: [
                      SvgPicture.asset(
                        AppSVG.searchFill,
                      )
                          .onTap(
                            onTap: () => bloc.add(const IsSearch()),
                          )
                          .marginOnly(right: 10),
                      SvgPicture.asset(
                        AppSVG.arrowSwap,
                        width: 20.sp,
                        height: 20.sp,
                      )
                          .onTap(
                            onTap: () => bloc.add(const SyncData()),
                          )
                          .marginOnly(right: 10)
                    ],
                  ),
            floatingActionButton: state.listType.isEmpty
                ? null
                : FloatingActionButton(
                    onPressed: () => Get.bottomSheet(
                            PromotionTypePopup(
                              listType: state.listType,
                              wrokplace_id: bloc.id,
                            ),
                            isScrollControlled: true)
                        .whenComplete(() => bloc.add(const Started())),
                    mini: true,
                    backgroundColor: Colors.blue,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
            body: SafeArea(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppSVG.filter,
                            width: 20.sp,
                            height: 20.sp,
                          ).marginOnly(right: 10),
                          'Lọc'.bodyLarge().marginOnly(right: 10),
                        ],
                      ).onTap(
                        onTap: () => bloc.add(ShowFilter(
                            showActive: !(state.showStatus &&
                                state.showApproved &&
                                state.showType &&
                                state.showTime),
                            showApproved: !(state.showStatus &&
                                state.showApproved &&
                                state.showType &&
                                state.showTime),
                            showType: !(state.showStatus &&
                                state.showApproved &&
                                state.showType &&
                                state.showTime),
                            showTime: !(state.showStatus &&
                                state.showApproved &&
                                state.showType &&
                                state.showTime))),
                      ),
                      Container(
                        width: 130.sp,
                        height: 30.sp,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: AppColors.bg_EAECF6),
                        child: Row(
                          children: [
                            Expanded(child: 'Phân loại'.bodyMedium()),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: AppColors.lable_42,
                              size: 24.sp,
                            )
                          ],
                        ),
                      )
                          .onTap(
                            onTap: () =>
                                bloc.add(ShowFilter(showType: !state.showType)),
                          )
                          .marginOnly(right: 10),
                      Container(
                        width: 130.sp,
                        height: 30.sp,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: AppColors.bg_EAECF6),
                        child: Row(
                          children: [
                            Expanded(child: 'Trạng thái'.bodyMedium()),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: AppColors.lable_42,
                              size: 24.sp,
                            )
                          ],
                        ),
                      )
                          .onTap(
                            onTap: () => bloc
                                .add(ShowFilter(showActive: !state.showStatus)),
                          )
                          .marginOnly(right: 10),
                      Container(
                        width: 130.sp,
                        height: 30.sp,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: AppColors.bg_EAECF6),
                        child: Row(
                          children: [
                            Expanded(child: 'Kiểm duyệt'.bodyMedium()),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: AppColors.lable_42,
                              size: 24.sp,
                            )
                          ],
                        ),
                      )
                          .onTap(
                            onTap: () => bloc.add(
                                ShowFilter(showApproved: !state.showApproved)),
                          )
                          .marginOnly(right: 10),
                      Container(
                        width: 130.sp,
                        height: 30.sp,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: AppColors.bg_EAECF6),
                        child: Row(
                          children: [
                            Expanded(child: 'Thời gian'.bodyMedium()),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: AppColors.lable_42,
                              size: 24.sp,
                            )
                          ],
                        ),
                      ).onTap(
                        onTap: () =>
                            bloc.add(ShowFilter(showTime: !state.showTime)),
                      ),
                    ],
                  ).paddingOnly(top: 10, left: 10, right: 10),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      if (state.fromDate != null || state.toDate != null)
                        Container(
                            margin: const EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26E7ED),
                                borderRadius: BorderRadius.circular(100)),
                            child: Row(
                              children: [
                                'Từ ${state.fromDate == null ? '' : Utils.dateToString('dd/MM/yyyy', state.fromDate!)}${state.toDate == null ? '' : ' - Đến ${Utils.dateToString('dd/MM/yyyy', state.toDate!)}'}'
                                    .bodyMedium()
                                    .marginOnly(right: 5),
                                SvgPicture.asset(
                                  AppSVG.exit,
                                  width: 12.sp,
                                  height: 12.sp,
                                ).onTap(
                                  onTap: () {
                                    bloc.add(const RemoveDateTime());
                                    bloc.add(const Started());
                                  },
                                )
                              ],
                            )),
                      ...state.listType.map((e) {
                        if (e.value_bit) {
                          return Container(
                              margin: const EdgeInsets.only(
                                  right: 10, top: 10, bottom: 10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black26E7ED),
                                  borderRadius: BorderRadius.circular(100)),
                              child: Row(
                                children: [
                                  e.name.bodyMedium().marginOnly(right: 5),
                                  SvgPicture.asset(
                                    AppSVG.exit,
                                    width: 12.sp,
                                    height: 12.sp,
                                  ).onTap(
                                    onTap: () {
                                      bloc.add(ChooseType(config: e));
                                      bloc.add(const Started());
                                    },
                                  )
                                ],
                              ));
                        }
                        return Container();
                      }),
                      ...state.listApproved.map((e) {
                        if (e.value_bit) {
                          return Container(
                              margin: const EdgeInsets.only(
                                  right: 10, top: 10, bottom: 10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black26E7ED),
                                  borderRadius: BorderRadius.circular(100)),
                              child: Row(
                                children: [
                                  e.name.bodyMedium().marginOnly(right: 5),
                                  SvgPicture.asset(
                                    AppSVG.exit,
                                    width: 12.sp,
                                    height: 12.sp,
                                  ).onTap(
                                    onTap: () {
                                      bloc.add(ChooseApproved(config: e));
                                      bloc.add(const Started());
                                    },
                                  )
                                ],
                              ));
                        }
                        return Container();
                      }),
                      ...state.list_active.map((e) => Container(
                          margin: const EdgeInsets.only(
                              right: 10, top: 10, bottom: 10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black26E7ED),
                              borderRadius: BorderRadius.circular(100)),
                          child: Row(
                            children: [
                              (e ? "Sử dụng" : "Không sử dụng")
                                  .bodyMedium()
                                  .marginOnly(right: 5),
                              SvgPicture.asset(
                                AppSVG.exit,
                                width: 12.sp,
                                height: 12.sp,
                              ).onTap(
                                onTap: () {
                                  bloc.add(ChooseActive(active: e));
                                  bloc.add(const Started());
                                },
                              )
                            ],
                          )))
                    ],
                  ),
                ),
                if (state.showType ||
                    state.showApproved ||
                    state.showStatus ||
                    state.showTime)
                  Expanded(
                      child: Stack(
                    children: [
                      Container(
                        color: Colors.black38,
                        width: ScreenUtil().screenWidth,
                        height: ScreenUtil().screenHeight,
                      ),
                      Container(
                        color: Colors.white,
                        constraints: BoxConstraints(
                            maxHeight: ScreenUtil().screenHeight),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Visibility(
                                  visible: state.showStatus,
                                  child: ExpandablePanel(
                                    controller: ExpandableController(
                                        initialExpanded: true),
                                    header: Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      width: double.infinity,
                                      height: 30.sp,
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          color: AppColors.bg_F8),
                                      child: 'Trạng thái'.titleMedium(),
                                    ),
                                    theme: const ExpandableThemeData(
                                        iconColor: AppColors.lable_42,
                                        iconPadding: EdgeInsets.only(right: 10),
                                        crossFadePoint: 0),
                                    collapsed: Container(),
                                    expanded: Column(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 5, bottom: 5),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: 'Sử dụng'.bodyLarge()),
                                              Checkbox(
                                                  value: state.list_active
                                                      .contains(true),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4)),
                                                  activeColor: Colors.blue,
                                                  onChanged: (value) => bloc
                                                      .add(const ChooseActive(
                                                          active: true)))
                                            ],
                                          ),
                                        ).onTap(
                                            onTap: () => bloc.add(
                                                const ChooseActive(
                                                    active: true))),
                                        const Divider(
                                          thickness: 0.5,
                                          color: Colors.black26,
                                          height: 0,
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 5, bottom: 5),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: 'Không sử dụng'
                                                      .bodyLarge()),
                                              Checkbox(
                                                  value: state.list_active
                                                      .contains(false),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4)),
                                                  activeColor: Colors.blue,
                                                  onChanged: (value) => bloc
                                                      .add(const ChooseActive(
                                                          active: false)))
                                            ],
                                          ),
                                        ).onTap(
                                          onTap: () => bloc.add(
                                              const ChooseActive(
                                                  active: false)),
                                        )
                                      ],
                                    ),
                                  ).marginOnly(bottom: 10)),
                              Visibility(
                                  visible: state.showApproved,
                                  child: ExpandablePanel(
                                    controller: ExpandableController(
                                        initialExpanded: true),
                                    header: Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      width: double.infinity,
                                      height: 30.sp,
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          color: AppColors.bg_F8),
                                      child: 'Kiểm duyệt'.titleMedium(),
                                    ),
                                    theme: const ExpandableThemeData(
                                      iconColor: AppColors.lable_42,
                                      iconPadding: EdgeInsets.only(right: 10),
                                      hasIcon: true,
                                    ),
                                    collapsed: Container(),
                                    expanded: Column(
                                      children: state.listApproved
                                          .map((e) => Container(
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    top: 5,
                                                    bottom: 5),
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        bottom: BorderSide(
                                                            color: e ==
                                                                    state
                                                                        .listApproved
                                                                        .last
                                                                ? Colors.white
                                                                : AppColors
                                                                    .border_e5,
                                                            width: 0.5))),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                        child:
                                                            e.name.bodyLarge()),
                                                    Checkbox(
                                                        value: e.value_bit,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4)),
                                                        activeColor: AppColors
                                                            .primaryColor,
                                                        onChanged: (value) =>
                                                            bloc.add(
                                                                ChooseApproved(
                                                                    config: e)))
                                                  ],
                                                ),
                                              ).onTap(
                                                onTap: () => bloc.add(
                                                    ChooseApproved(config: e)),
                                              ))
                                          .toList(),
                                    ),
                                  ).marginOnly(bottom: 10)),
                              Visibility(
                                  visible: state.showType,
                                  child: Column(
                                    children: [
                                      ExpandablePanel(
                                        controller: ExpandableController(
                                            initialExpanded: true),
                                        header: Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          width: double.infinity,
                                          height: 30.sp,
                                          padding: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              color: AppColors.bg_F8),
                                          child: 'Danh mục'.titleMedium(),
                                        ),
                                        theme: const ExpandableThemeData(
                                          iconColor: AppColors.lable_42,
                                          iconPadding:
                                              EdgeInsets.only(right: 10),
                                          hasIcon: true,
                                        ),
                                        collapsed: Container(),
                                        expanded: Column(
                                          children: state.listType
                                              .map((e) => Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10,
                                                            top: 5,
                                                            bottom: 5),
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                                color: e ==
                                                                        state
                                                                            .listType
                                                                            .last
                                                                    ? Colors
                                                                        .white
                                                                    : AppColors
                                                                        .border_e5,
                                                                width: 0.5))),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                            child: e.name
                                                                .bodyLarge()),
                                                        Checkbox(
                                                            value: e.value_bit,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4)),
                                                            activeColor: AppColors
                                                                .primaryColor,
                                                            onChanged: (value) =>
                                                                bloc.add(
                                                                    ChooseType(
                                                                        config:
                                                                            e)))
                                                      ],
                                                    ),
                                                  ).onTap(
                                                      onTap: () => bloc.add(
                                                          ChooseType(
                                                              config: e))))
                                              .toList(),
                                        ),
                                      ).marginOnly(bottom: 10)
                                    ],
                                  )),
                              Visibility(
                                  visible: state.showTime,
                                  child: Column(
                                    children: [
                                      ExpandablePanel(
                                              controller: ExpandableController(
                                                  initialExpanded: true),
                                              header: Container(
                                                margin: const EdgeInsets.only(
                                                    left: 10),
                                                width: double.infinity,
                                                height: 30.sp,
                                                padding:
                                                    const EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                    color: AppColors.bg_F8),
                                                child:
                                                    'Thời gian'.titleMedium(),
                                              ),
                                              theme: const ExpandableThemeData(
                                                iconColor: AppColors.lable_42,
                                                iconPadding:
                                                    EdgeInsets.only(right: 10),
                                                hasIcon: true,
                                              ),
                                              collapsed: Container(),
                                              expanded: Row(
                                                children: [
                                                  Expanded(
                                                      child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      'Từ ngày'.bodyLarge(),
                                                      TextFormField(
                                                        controller: TextEditingController(
                                                            text: state.fromDate ==
                                                                    null
                                                                ? ''
                                                                : Utils.dateToString(
                                                                    'dd/MM/yyyy',
                                                                    state
                                                                        .fromDate!)),
                                                        readOnly: true,
                                                        onTap: () => bloc.add(
                                                            const ChooseTime(
                                                                'from')),
                                                        decoration:
                                                            InputDecoration(
                                                                hintText:
                                                                    'Chọn ngày',
                                                                prefixIconConstraints:
                                                                    BoxConstraints(
                                                                        maxHeight: 40
                                                                            .sp,
                                                                        maxWidth: 40
                                                                            .sp),
                                                                prefixIcon:
                                                                    SvgPicture
                                                                        .asset(
                                                                  AppSVG
                                                                      .calendarDate,
                                                                  width: 20.sp,
                                                                  height: 20.sp,
                                                                ).marginOnly(
                                                                        right:
                                                                            4)),
                                                      )
                                                    ],
                                                  )),
                                                  SizedBox(
                                                    width: 20.sp,
                                                  ),
                                                  Expanded(
                                                      child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      'Đến ngày'.bodyLarge(),
                                                      TextFormField(
                                                        controller: TextEditingController(
                                                            text: state.toDate ==
                                                                    null
                                                                ? ''
                                                                : Utils.dateToString(
                                                                    'dd/MM/yyyy',
                                                                    state
                                                                        .toDate!)),
                                                        readOnly: true,
                                                        onTap: () => bloc.add(
                                                            const ChooseTime(
                                                                'to')),
                                                        decoration:
                                                            InputDecoration(
                                                                hintText:
                                                                    'Chọn ngày',
                                                                prefixIconConstraints:
                                                                    BoxConstraints(
                                                                        maxHeight: 40
                                                                            .sp,
                                                                        maxWidth: 40
                                                                            .sp),
                                                                prefixIcon:
                                                                    SvgPicture
                                                                        .asset(
                                                                  AppSVG
                                                                      .calendarDate,
                                                                  width: 20.sp,
                                                                  height: 20.sp,
                                                                ).marginOnly(
                                                                        right:
                                                                            4)),
                                                      )
                                                    ],
                                                  ))
                                                ],
                                              ).marginSymmetric(
                                                  horizontal: 10, vertical: 10))
                                          .marginOnly(bottom: 10)
                                    ],
                                  )),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 12),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black26,
                                          offset: Offset(0, -1))
                                    ],
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: 'Hủy'
                                          .bodyLarge(
                                              color: AppColors.label_00104F)
                                          .elevatedButton(
                                            onPressed: () =>
                                                bloc.add(const ShowFilter()),
                                            style: OutlineButtonStyle(
                                                borderColor:
                                                    AppColors.label_00104F,
                                                height: 38,
                                                borderRadius: 100),
                                          )
                                          .marginSymmetric(horizontal: 5),
                                    ),
                                    Expanded(
                                      child: 'Áp dụng'
                                          .bodyLarge(color: Colors.white)
                                          .elevatedButton(
                                            onPressed: () {
                                              bloc.add(const ShowFilter(
                                                  showActive: false,
                                                  showApproved: false,
                                                  showType: false,
                                                  showTime: false));
                                              bloc.add(const Started());
                                            },
                                            style: PrimeButtonStyle(
                                                bgColor: AppColors.label_00104F,
                                                height: 38,
                                                borderRadius: 100),
                                          )
                                          .marginSymmetric(horizontal: 5),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 5),
                                width: 135.sp,
                                height: 5,
                                decoration: BoxDecoration(
                                    color: AppColors.bg_3,
                                    borderRadius: BorderRadius.circular(100)),
                              )
                            ],
                          ),
                        ),
                      ).animate().slideY(duration: 300.ms)
                    ],
                  ))
                else
                  Expanded(
                      child: SmartRefresher(
                    controller: bloc.refresherController,
                    enablePullUp: true,
                    onRefresh: () => bloc.add(const OnRefresh()),
                    onLoading: () => bloc.add(const OnLoad()),
                    child: state.isListLoading
                        ? const LoadingWidget()
                        : state.listDiscount.isEmpty
                            ? const EmptyWidget()
                            : SingleChildScrollView(
                                child: Column(
                                children: state.listDiscount
                                    .map((e) => Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          decoration: const BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                            color: Colors.black12,
                                          ))),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ImageCached(
                                                image: e.image,
                                                width: 70.sp,
                                                height: 70.sp,
                                              ).marginOnly(right: 10),
                                              Expanded(
                                                  child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  e.name
                                                      .titleMedium()
                                                      .marginOnly(bottom: 5),
                                                  bloc
                                                      .checkexistDate(
                                                          e.to_date ??
                                                              DateTime.now())
                                                      .bodyMedium(
                                                          color: bloc
                                                              .checkexistDateColor(e
                                                                      .to_date ??
                                                                  DateTime
                                                                      .now())),
                                                  Row(
                                                    children: [
                                                      if (e.active)
                                                        SvgPicture.asset(
                                                          AppSVG.pause,
                                                          width: 20.sp,
                                                          height: 20.sp,
                                                        ).marginOnly(right: 10)
                                                      else
                                                        SvgPicture.asset(
                                                          AppSVG.play,
                                                          width: 20.sp,
                                                          height: 20.sp,
                                                        ).marginOnly(right: 10),
                                                      if (e.approved_key ==
                                                          'admin.approved.waiting')
                                                        Container(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical: 3,
                                                                  horizontal:
                                                                      8),
                                                          decoration: BoxDecoration(
                                                              color: AppColors
                                                                  .bg_FFF6E8,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100)),
                                                          child: Row(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .replay_rounded,
                                                                color: AppColors
                                                                    .label_FFA31A,
                                                                size: 15.sp,
                                                              ).marginOnly(
                                                                  right: 5),
                                                              'Chờ duyệt'.bodySmall(
                                                                  color: AppColors
                                                                      .label_FFA31A)
                                                            ],
                                                          ),
                                                        )
                                                      else if (e.approved_key ==
                                                          'admin.approved.ok')
                                                        Container(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical: 3,
                                                                  horizontal:
                                                                      8),
                                                          decoration: BoxDecoration(
                                                              color: AppColors
                                                                  .bg_ECFBE6,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100)),
                                                          child: Row(
                                                            children: [
                                                              Icon(
                                                                Icons.check,
                                                                color: Colors
                                                                    .green,
                                                                size: 15.sp,
                                                              ).marginOnly(
                                                                  right: 5),
                                                              'Đã duyệt'.bodySmall(
                                                                  color: Colors
                                                                      .green)
                                                            ],
                                                          ),
                                                        )
                                                      else if (e.approved_key ==
                                                          'admin.approved.failed')
                                                        Container(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical: 3,
                                                                  horizontal:
                                                                      8),
                                                          decoration: BoxDecoration(
                                                              color: AppColors
                                                                  .bg_FFE8EC,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100)),
                                                          child: Row(
                                                            children: [
                                                              SvgPicture.asset(
                                                                AppSVG.exit,
                                                                width: 15.sp,
                                                                height: 15.sp,
                                                                color:
                                                                    Colors.red,
                                                              ).marginOnly(
                                                                  right: 5),
                                                              'Hủy'.bodySmall(
                                                                  color: Colors
                                                                      .red)
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ).marginSymmetric(vertical: 5)
                                                ],
                                              )),
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_outlined,
                                                ,
                                                size: 15.sp,
                                              )
                                            ],
                                          ),
                                        ).onTap(
                                          onTap: () => Get.toNamed(
                                                  PromotionDetailScreen.path
                                                      .pageParams({
                                            "id": e.id.toString(),
                                            'workplace_id': bloc.id.toString()
                                          }))!
                                              .whenComplete(() =>
                                                  bloc.add(const OnRefresh())),
                                        ))
                                    .toList(),
                              )).marginAll(10),
                  ))
              ],
            )),
          );
        },
      ),
    );
  }
}
