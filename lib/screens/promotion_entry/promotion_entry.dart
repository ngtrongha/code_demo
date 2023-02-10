part of 'bloc/promotion_entry_bloc.dart';

class PromotionEntryScreen extends StatelessWidget {
  const PromotionEntryScreen({super.key});

  static String get path => '/promotion_entry';
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                PromotionEntryBloc()..add(const StartedEntry())),
        BlocProvider(create: (context) => PromotionServicesBloc()),
        BlocProvider(create: (context) => PromotionServiceGroupsBloc()),
      ],
      child: BlocBuilder<PromotionEntryBloc, PromotionEntryState>(
        builder: (context, state) {
          final bloc = BlocProvider.of<PromotionEntryBloc>(context);
          return Scaffold(
            appBar: AppBar(
              title: 'Khuyến mãi'.titleLarge(color: Colors.white),
            ),
            body: SafeArea(
                child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Form(
                        key: bloc.formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: double.infinity,
                                color: Colors.black.withOpacity(0.18),
                                padding: const EdgeInsets.all(10),
                                child: 'Thông tin cơ bản'.bodyLarge()),
                            Center(
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                height: ScreenUtil().screenWidth / 2.5,
                                width: ScreenUtil().screenWidth / 2.5,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(4)),
                                child: state.promotion.image.isNotEmpty &&
                                        state.avatar == null
                                    ? ImageCached(
                                        image: state.promotion.image,
                                        height: ScreenUtil().screenWidth / 2.5,
                                        width: ScreenUtil().screenWidth / 2.5,
                                        fit: BoxFit.cover,
                                      )
                                    : state.avatar == null
                                        ? Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.camera_alt),
                                              'Hình ảnh đại diện'
                                                  .displayMedium()
                                            ],
                                          )
                                        : Image.file(
                                            state.avatar!,
                                            height:
                                                ScreenUtil().screenWidth / 2.5,
                                            width:
                                                ScreenUtil().screenWidth / 2.5,
                                            fit: BoxFit.cover,
                                          ),
                              ).onTap(
                                onTap: () => bloc.add(const ChooseAvatar()),
                              ),
                            ),
                            'Tên mã giảm giá'
                                .requiredText()
                                .marginOnly(left: 10),
                            TextFormField(
                              style: Get.textTheme.bodyLarge!
                                  .copyWith(fontSize: 18.sp),
                              controller: bloc.nameController,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (bloc.nameController.text.isEmpty) {
                                  return 'Bạn chưa nhập têm mã giảm giá';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  hintText: 'Nhập...'),
                            ).marginOnly(bottom: 10, left: 10, right: 10),
                            'Mã giảm giá'.requiredText().marginOnly(left: 10),
                            TextFormField(
                              style: Get.textTheme.bodyLarge!
                                  .copyWith(fontSize: 18.sp),
                              controller: bloc.codeController,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (bloc.codeController.text.isEmpty) {
                                  return 'Bạn chưa nhập mã giảm giá';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  hintText: 'Nhập...'),
                            ).marginOnly(bottom: 10, left: 10, right: 10),
                            'Thời gian hiệu lực'
                                .requiredText()
                                .marginOnly(left: 10),
                            DropdownButtonFormField(
                                    value: state.discountTime,
                                    items: state.listDiscountTime
                                        .map((e) =>
                                            DropdownMenuItem(
                                                value: e,
                                                child: e.name.bodyLarge()))
                                        .toList(),
                                    onChanged: (value) =>
                                        bloc.add(ChooseDiscountTime(value!)))
                                .marginOnly(bottom: 10, left: 10, right: 10),
                            'Thời gian bắt đầu'
                                .requiredText()
                                .marginOnly(left: 10),
                            TextFormField(
                              style: Get.textTheme.bodyLarge!
                                  .copyWith(fontSize: 18.sp),
                              readOnly: true,
                              controller: TextEditingController(
                                  text: Utils.dateToString(
                                      'dd/MM/yyyy', state.fromDate)),
                              onTap: () =>
                                  bloc.add(const ChooseEffectiveTime()),
                              decoration: InputDecoration(
                                  suffixIcon:
                                      Icon(Icons.calendar_month)
                                          .paddingAll(14)),
                            ).marginOnly(bottom: 10, left: 10, right: 10),
                            'Thời gian kết thúc'
                                .requiredText()
                                .marginOnly(left: 10),
                            TextFormField(
                              style: Get.textTheme.bodyLarge!
                                  .copyWith(fontSize: 18.sp),
                              readOnly: true,
                              controller: TextEditingController(
                                  text: Utils.dateToString(
                                      'dd/MM/yyyy', state.toDate)),
                              onTap: () => bloc.add(const ChooseEndTime()),
                              decoration: InputDecoration(
                                  suffixIcon:
                                      SvgPicture.asset(AppSVG.calendarDate)
                                          .paddingAll(14)),
                            ).marginOnly(bottom: 10, left: 10, right: 10),
                            if (state.discountTime.key ==
                                'agent.discount.type.time.fixed')
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  'Sử dụng trong khoảng (h)'
                                      .bodyLarge()
                                      .marginOnly(left: 10),
                                  TextFormField(
                                    style: Get.textTheme.bodyLarge!
                                        .copyWith(fontSize: 18.sp),
                                    controller: bloc.timelapseController
                                      ..text = bloc.timelapseFormatter.format(
                                          bloc.timelapseController.text),
                                    inputFormatters: [bloc.timelapseFormatter],
                                    keyboardType: TextInputType.number,
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    decoration: const InputDecoration(
                                        hintText: 'Nhập thời gian'),
                                    validator: (value) {
                                      if (bloc
                                          .timelapseController.text.isEmpty) {
                                        return 'Bạn chưa nhập thời gian';
                                      }
                                      return null;
                                    },
                                  ).marginOnly(bottom: 10, left: 10, right: 10),
                                ],
                              )
                            else if (state.discountTime.key ==
                                'agent.discount.type.time.dynamic')
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  'Thời gian bắt đầu sưu tầm'
                                      .bodyLarge()
                                      .marginOnly(left: 10),
                                  TextFormField(
                                    style: Get.textTheme.bodyLarge!
                                        .copyWith(fontSize: 18.sp),
                                    readOnly: true,
                                    controller: TextEditingController(
                                        text: Utils.dateToString(
                                            'dd/MM/yyyy', state.openDate)),
                                    onTap: () => bloc
                                        .add(const ChooseTimeStartCollecting()),
                                    decoration: InputDecoration(
                                        suffixIcon: Icon(Icons.calendar_month)
                                            .paddingAll(14)),
                                  ).marginOnly(bottom: 10, left: 10, right: 10),
                                ],
                              ),
                            'Phạm vi áp dụng chương trình'
                                .requiredText()
                                .marginOnly(left: 10),
                            DropdownButtonFormField(
                                    value: state.discountScope,
                                    items: state.listDiscountScope
                                        .map((e) =>
                                            DropdownMenuItem(
                                                value: e,
                                                child: e.name.bodyLarge()))
                                        .toList(),
                                    onChanged: (value) =>
                                        bloc.add(ChooseDiscountScope(value!)))
                                .marginOnly(bottom: 10, left: 10, right: 10),
                            if (state.discountScope.key ==
                                'discount.scope.servicegroup')
                              BlocConsumer<PromotionServiceGroupsBloc,
                                  PromotionServiceGroupsState>(
                                listener: (context, stateGroup) {
                                  bloc.add(AddServiceGroup(
                                      listGroupService:
                                          stateGroup.listServiceGroupPromotion,
                                      listServiceGroupDelete:
                                          stateGroup.listDeletePromotion));
                                },
                                builder: (context, stateGroup) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      'Thêm nhóm dịch vụ'
                                          .bodyLarge()
                                          .marginOnly(left: 10),
                                      TextFormField(
                                        controller: TextEditingController(
                                            text:
                                                'Hiện tai chọn  ${state.listServiceGroup.length} nhóm'),
                                        style: Get.textTheme.bodyLarge!
                                            .copyWith(fontSize: 18.sp),
                                        readOnly: true,
                                        onTap: () async =>
                                            await Get.to(BlocProvider.value(
                                          value: BlocProvider.of<
                                                  PromotionServiceGroupsBloc>(
                                              context)
                                            ..add(
                                                StartedGroup(bloc.workplace_id))
                                            ..add(GetOldGroup(
                                              listService:
                                                  state.listServiceGroup,
                                              listServiceDelete:
                                                  state.listServiceGroupDelete,
                                            )),
                                          child:
                                              const PromotionServiceGroupsScreen(),
                                        )),
                                        decoration: InputDecoration(
                                            suffixIcon: Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: Colors.black,
                                          size: 15.sp,
                                        )),
                                      ).marginOnly(
                                          bottom: 10, left: 10, right: 10)
                                    ],
                                  );
                                },
                              )
                            else if (state.discountScope.key ==
                                'discount.scope.service')
                              BlocConsumer<PromotionServicesBloc,
                                  PromotionServicesState>(
                                listener: (context, stateServices) {
                                  bloc.add(AddService(
                                      listService:
                                          stateServices.listServicePromotion,
                                      listServiceDelete:
                                          stateServices.listDeletePromotion));
                                },
                                builder: (context, stateServices) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      'Thêm dịch vụ'
                                          .bodyLarge()
                                          .marginOnly(left: 10),
                                      TextFormField(
                                        controller: TextEditingController(
                                            text:
                                                'Hiện tai chọn ${state.listService.length} dịch vụ'),
                                        style: Get.textTheme.bodyLarge!
                                            .copyWith(fontSize: 18.sp),
                                        readOnly: true,
                                        onTap: () async =>
                                            await Get.to(BlocProvider.value(
                                          value: BlocProvider.of<
                                              PromotionServicesBloc>(context)
                                            ..add(StartedService(
                                                bloc.workplace_id))
                                            ..add(GetOldService(
                                              listService: state.listService,
                                              listServiceDelete:
                                                  state.listServiceDelete,
                                            )),
                                          child:
                                              const PromotionServicesScreen(),
                                        )),
                                        decoration: InputDecoration(
                                            suffixIcon: Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: Colors.black,
                                          size: 15.sp,
                                        )),
                                      ).marginOnly(
                                          bottom: 10, left: 10, right: 10)
                                    ],
                                  );
                                },
                              ),
                            Container(
                                margin: const EdgeInsets.only(top: 10),
                                width: double.infinity,
                                color: Colors.black.withOpacity(0.18),
                                padding: const EdgeInsets.all(10),
                                child: 'Thiết lập mức giảm'.bodyLarge()),
                            'Hình thức giảm giá'
                                .requiredText()
                                .marginOnly(left: 10, top: 10),
                            DropdownButtonFormField(
                                    value: state.discountType,
                                    items: state.listDiscountType
                                        .map((e) =>
                                            DropdownMenuItem(
                                                value: e,
                                                child: e.name.bodyLarge()))
                                        .toList(),
                                    onChanged: (value) =>
                                        bloc.add(ChooseDiscountType(value!)))
                                .marginOnly(bottom: 12, left: 10, right: 10),
                            'Giá trị đơn hàng đạt tới'
                                .requiredText()
                                .marginOnly(left: 10),
                            TextFormField(
                              style: Get.textTheme.bodyLarge!
                                  .copyWith(fontSize: 18.sp),
                              controller: bloc.minValueController
                                ..text = bloc.priceFormatter
                                    .format(bloc.minValueController.text),
                              keyboardType: TextInputType.number,
                              inputFormatters: [bloc.priceFormatter],
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (bloc.minValueController.text.isEmpty) {
                                  return 'Bạn chưa nhập Giá trị đơn hàng';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  hintText: 'Nhập...'),
                            ).marginOnly(bottom: 10, left: 10, right: 10),
                            if (state.discountType.key ==
                                'discount.type.percent')
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  'Giảm giá (%)'
                                      .requiredText()
                                      .marginOnly(left: 10),
                                  TextFormField(
                                    controller: bloc.discoutController
                                      ..text = bloc.discountFormatter
                                          .format(bloc.discoutController.text),
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [bloc.discountFormatter],
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    validator: (value) {
                                      if (bloc.discoutController.text.isEmpty) {
                                        return 'Bạn chưa nhập Giảm giá (%)';
                                      } else if (bloc.discountFormatter
                                              .getUnformattedValue() >
                                          100) {
                                        return 'Gía trị không hợp lệ';
                                      }
                                      return null;
                                    },
                                    style: Get.textTheme.bodyLarge!
                                        .copyWith(fontSize: 18.sp),
                                    decoration: InputDecoration(
                                        hintText:
                                            'Nhập...'),
                                  ).marginOnly(bottom: 10, left: 10, right: 10),
                                  'Giá trị tối đa đơn hàng (%)'
                                      .requiredText()
                                      .marginOnly(left: 10),
                                  TextFormField(
                                    controller: bloc.maxValueController
                                      ..text = bloc.maxValueFormatter
                                          .format(bloc.maxValueController.text),
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [bloc.maxValueFormatter],
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    validator: (value) {
                                      if (bloc
                                          .maxValueController.text.isEmpty) {
                                        return 'Bạn chưa nhập Giá trị tối đa đơn hàng';
                                      }
                                      return null;
                                    },
                                    style: Get.textTheme.bodyLarge!
                                        .copyWith(fontSize: 18.sp),
                                    decoration: InputDecoration(
                                        hintText:
                                            'Nhập...'),
                                  ).marginOnly(bottom: 10, left: 10, right: 10),
                                ],
                              )
                            else
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  'Số tiền giảm'
                                      .requiredText()
                                      .marginOnly(left: 10),
                                  TextFormField(
                                    controller: bloc.discoutController
                                      ..text = bloc.discountprecentFormatter
                                          .format(bloc.discoutController.text),
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      bloc.discountprecentFormatter
                                    ],
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    validator: (value) {
                                      if (bloc.discoutController.text.isEmpty) {
                                        return 'Bạn chưa nhập Số tiền giảm';
                                      }
                                      return null;
                                    },
                                    style: Get.textTheme.bodyLarge!
                                        .copyWith(fontSize: 18.sp),
                                    decoration: InputDecoration(
                                        hintText:
                                            'Nhập...'),
                                  ).marginOnly(bottom: 10, left: 10, right: 10),
                                ],
                              ),
                            'Số lượng mã giảm giá'
                                .requiredText()
                                .marginOnly(left: 10),
                            TextFormField(
                              controller: bloc.amountController
                                ..text = bloc.amountFormatter
                                    .format(bloc.amountController.text),
                              inputFormatters: [bloc.amountFormatter],
                              keyboardType: TextInputType.number,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (bloc.amountController.text.isEmpty) {
                                  return 'Bạn chưa nhập Số lượng mã giảm giá';
                                }
                                return null;
                              },
                              style: Get.textTheme.bodyLarge!
                                  .copyWith(fontSize: 18.sp),
                              decoration: InputDecoration(
                                  hintText: 'Nhập...'),
                            ).marginOnly(bottom: 10, left: 10, right: 10),
                            'Số lượt sử dụng cho mỗi khách'
                                .requiredText()
                                .marginOnly(left: 10),
                            TextFormField(
                              controller: bloc.amountUseController
                                ..text = bloc.amountUseFormatter
                                    .format(bloc.amountUseController.text),
                              inputFormatters: [bloc.amountUseFormatter],
                              keyboardType: TextInputType.number,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (bloc.amountUseController.text.isEmpty) {
                                  return 'Bạn chưa nhập Số lượt sử dụng cho mỗi khách';
                                }
                                return null;
                              },
                              style: Get.textTheme.bodyLarge!
                                  .copyWith(fontSize: 18.sp),
                              decoration: InputDecoration(
                                  hintText: 'Nhập...'),
                            ).marginOnly(bottom: 10, left: 10, right: 10),
                            'Quy định'
                                .requiredText()
                                .marginOnly(left: 10, bottom: 10),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      , width: 0.5),
                                  borderRadius: BorderRadius.circular(4)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  HtmlEditor(
                                    controller: bloc.controller,
                                    htmlEditorOptions: HtmlEditorOptions(
                                      hint: 'Nhập...',
                                      shouldEnsureVisible: false,
                                      autoAdjustHeight: true,
                                    ),
                                    htmlToolbarOptions: HtmlToolbarOptions(
                                      defaultToolbarButtons: [
                                        const StyleButtons(style: false),
                                        const FontSettingButtons(
                                            fontSizeUnit: false,
                                            fontName: false),
                                        const ColorButtons(),
                                        const InsertButtons(
                                            video: false,
                                            audio: false,
                                            table: false,
                                            hr: false,
                                            otherFile: false)
                                      ],
                                      customToolbarButtons: [
                                        const Icon(
                                          Icons.fullscreen,
                                          color: Colors.black,
                                        ).onTap(
                                            onTap: () async => await bloc
                                                .controller
                                                .getText()
                                                .then((value) =>
                                                    Get.bottomSheet(
                                                            FullHtmlEditer(
                                                              text: value,
                                                            ),
                                                            enableDrag: false,
                                                            isScrollControlled:
                                                                true)
                                                        .then((value) => bloc
                                                            .controller
                                                            .setText(value))))
                                      ],
                                      toolbarPosition: ToolbarPosition
                                          .aboveEditor, //by default
                                      toolbarType: ToolbarType
                                          .nativeScrollable, //by default

                                      mediaLinkInsertInterceptor:
                                          (String url, InsertFileType type) {
                                        return true;
                                      },
                                      mediaUploadInterceptor:
                                          (file, InsertFileType type) async {
                                        return true;
                                      },
                                    ),
                                    callbacks: Callbacks(
                                      onFocus: () {
                                        Utils().unfocusScreen(context);
                                      },
                                      onImageUpload: (file) async {},
                                    ),
                                  ),
                                ],
                              ),
                            ).marginAll(10),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.black26, width: 0.5))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  'Sử dụng'
                                      .bodyLarge(),
                                  Switch(
                                    value: state.isActive,
                                    onChanged: (value) =>
                                        bloc.add(const ChangeActive()),
                                    activeColor: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                            UploadImageWidget(
                                images: state.listImage,
                                oldImage: state.promotion.media_list,
                                onTapDel: (p0) => bloc.add(DeleteImage(p0)),
                                onTapAdd: () =>
                                    bloc.add(const ChooseImage())).marginAll(10)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 12),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26, offset: Offset(0, -1))
                        ],
                        borderRadius: BorderRadius.circular(8)),
                    child: 'Xác nhận'
                        .bodyLarge(color: Colors.white)
                        .elevatedButton(
                          onPressed: () {
                            Utils().unfocusScreen(context);
                            bloc.add(const Create());
                          },
                        ),
                  ),
                ],
              ),
            )),
          );
        },
      ),
    );
  }
}
