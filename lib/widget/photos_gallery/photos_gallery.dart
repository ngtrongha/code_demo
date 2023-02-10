import 'package:badges/badges.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../utils/utils.dart';
import 'bloc/photos_gallery_bloc.dart';

class PhotosGalleryWidget extends StatelessWidget {
  const PhotosGalleryWidget({super.key});
  static String get path => '/photos_gallery';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PhotosGalleryBloc()..add(const Started()),
      child: BlocBuilder<PhotosGalleryBloc, PhotosGalleryState>(
        builder: (context, state) {
          final bloc = BlocProvider.of<PhotosGalleryBloc>(context);
          final radius = ScreenUtil().screenWidth / 3;
          return Scaffold(
            backgroundColor: Colors.white,
            floatingActionButtonAnimator: NoScalingAnimation(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: state.imagesChoose.isNotEmpty
                ? TextButton(
                    onPressed: () => bloc.add(const SaveData()),
                    style: TextButton.styleFrom(
                        minimumSize: Size(ScreenUtil().screenWidth, 40.sp),
                        backgroundColor: Colors.blue),
                    child: Text(
                      'Đã chọn ${state.imagesChoose.length} hình',
                      style: Get.textTheme.titleMedium!
                          .copyWith(color: Colors.white),
                    )).marginSymmetric(horizontal: 10, vertical: 10)
                : null,
            appBar: AppBar(
                centerTitle: false,
                title: state.album == null
                    ? 'Tất cả'.titleLarge(color: Colors.white)
                    : DropdownButtonHideUnderline(
                        child: DropdownButton<AssetPathEntity>(
                            value: state.album,
                            onChanged: (value) =>
                                bloc.add(ChooseAlbum(value!.id)),
                            items: state.listAlbum
                                .map((e) => DropdownMenuItem(
                                    value: e,
                                    child:
                                        e.name.titleLarge(color: Colors.black)))
                                .toList()),
                      )),
            body: SafeArea(
                child: SmartRefresher(
              controller: bloc.refresherController,
              enablePullUp: true,
              onRefresh: () => bloc.add(const OnRefresh()),
              onLoading: () => bloc.add(const OnLoad()),
              child: SingleChildScrollView(
                child: Wrap(
                  children: [
                    InkWell(
                      onTap: () => bloc.add(const ShotImage()),
                      child: Container(
                        width: radius,
                        height: radius,
                        alignment: Alignment.center,
                        color: Colors.blue.shade200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.camera_alt_rounded,
                              color: Colors.black,
                              size: 25.sp,
                            ).marginOnly(bottom: 10),
                            Text(
                              'Máy ảnh',
                              style: Get.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                    ),
                    ...state.listImages.map((e) => Badge(
                          badgeStyle: const BadgeStyle(
                            badgeColor: Colors.transparent,
                            elevation: 0,
                            padding: EdgeInsets.zero,
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.white,
                            ),
                          ),
                          badgeAnimation:
                              const BadgeAnimation.fade(toAnimate: false),
                          position: BadgePosition.topEnd(end: 10, top: 10),
                          badgeContent: InkWell(
                            onTap: () {
                              if (state.imagesChoose
                                  .any((element) => element.id == e.id)) {
                                bloc.add(DeleteImage(e.id));
                              } else {
                                bloc.add(ChooseImage(e.id));
                              }
                            },
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            child: Container(
                                alignment: Alignment.center,
                                height: 25.sp,
                                width: 25.sp,
                                decoration: BoxDecoration(
                                  color: state.imagesChoose
                                          .any((element) => element.id == e.id)
                                      ? Colors.blue
                                      : Colors.transparent,
                                  shape: BoxShape.circle,
                                ),
                                child: Text(
                                  state.imagesChoose
                                          .any((element) => element.id == e.id)
                                      ? '${state.imagesChoose.indexOf(e) + 1}'
                                      : '',
                                  style: Get.textTheme.titleSmall!
                                      .copyWith(color: Colors.white),
                                )),
                          ),
                          child: InkWell(
                            onTap: () {
                              if (state.imagesChoose
                                  .any((element) => element.id == e.id)) {
                                bloc.add(DeleteImage(e.id));
                              } else {
                                bloc.add(ChooseImage(e.id));
                              }
                            },
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            child: AssetEntityImage(
                              e,
                              isOriginal: false,
                              width: radius,
                              height: radius,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            )),
          );
        },
      ),
    );
  }
}

class NoScalingAnimation extends FloatingActionButtonAnimator {
  @override
  Offset getOffset(
      {required Offset begin, required Offset end, required double progress}) {
    return end;
  }

  @override
  Animation<double> getRotationAnimation({required Animation<double> parent}) {
    return Tween<double>(begin: 1, end: 1).animate(parent);
  }

  @override
  Animation<double> getScaleAnimation({required Animation<double> parent}) {
    return Tween<double>(begin: 1, end: 1).animate(parent);
  }
}
