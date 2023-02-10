import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../utils/utils.dart';

part 'photos_gallery_event.dart';
part 'photos_gallery_state.dart';
part 'photos_gallery_bloc.freezed.dart';

class PhotosGalleryBloc extends Bloc<PhotosGalleryEvent, PhotosGalleryState> {
  final refresherController = RefreshController();
  final maxSelect = Get.arguments as int?;
  PhotosGalleryBloc() : super(const PhotosGalleryState()) {
    on<PhotosGalleryEvent>((event, emit) {});
    on<Started>(started);
    on<ChooseImage>(chooseImage);
    on<DeleteImage>(deleteImage);
    on<ShotImage>(shotImage);
    on<ChooseAlbum>(chooseAlbum);
    on<SaveData>(saveData);
    on<OnLoad>(onLoad);
    on<OnRefresh>(onRefresh);
  }
  onLoad(OnLoad event, Emitter<PhotosGalleryState> emit) async {
    try {
      if (state.album == null) {
        add(const Started());

        return;
      }
      await state.album!
          .getAssetListRange(
              start: state.totalCount, end: state.totalCount + 20)
          .then((value) => emit(state.copyWith(
              listImages: state.listImages.toList()..addAll(value),
              totalCount: state.totalCount + value.length)));
    } catch (e) {
      log(e.toString());
    } finally {
      refresherController.loadComplete();
    }
  }

  onRefresh(OnRefresh event, Emitter<PhotosGalleryState> emit) async {
    try {
      emit(state.copyWith(totalCount: 20));
      add(const Started());
    } catch (e) {
      log(e.toString());
    } finally {
      refresherController.refreshCompleted();
    }
  }

  saveData(SaveData event, Emitter<PhotosGalleryState> emit) async {
    EasyLoading.show();
    final list = <File>[];
    for (var element in state.imagesChoose) {
      final data = await element.loadFile(isOrigin: false);
      if (data != null) list.add(data);
    }
    Get.back(result: list);
    PhotoManager.clearFileCache();
    EasyLoading.dismiss();
  }

  shotImage(ShotImage event, Emitter<PhotosGalleryState> emit) async {
    final file = await ImagePicker().pickImage(
        source: ImageSource.camera,
        preferredCameraDevice: CameraDevice.front,
        imageQuality: 100,
        maxHeight: 1080,
        maxWidth: 1080);
    if (file != null) {
      await ImageGallerySaver.saveFile(file.path)
          .then((value) => print(value.toString()));
      emit(state.copyWith(listImages: [], album: null));
      add(const Started());
    }
  }

  chooseAlbum(ChooseAlbum event, Emitter<PhotosGalleryState> emit) async {
    emit(state.copyWith(
        album:
            state.listAlbum.firstWhere((element) => element.id == event.id)));
    add(const Started());
  }

  chooseImage(ChooseImage event, Emitter<PhotosGalleryState> emit) async {
    if (maxSelect != null) {
      if (state.imagesChoose.length < maxSelect!) {
        emit(state.copyWith(
            imagesChoose: state.imagesChoose.toList()
              ..addAll(state.listImages
                  .where((element) => element.id == event.id))));
      } else {
        // Toast.notifyError(
        //     AppLocalizations.of(Get.context!)!.toast_photos_choose_one);
      }
    } else {
      emit(state.copyWith(
          imagesChoose: state.imagesChoose.toList()
            ..addAll(
                state.listImages.where((element) => element.id == event.id))));
    }
  }

  deleteImage(DeleteImage event, Emitter<PhotosGalleryState> emit) async {
    emit(state.copyWith(
        imagesChoose: state.imagesChoose.toList()
          ..remove(state.listImages
              .firstWhere((element) => element.id == event.id))));
  }

  started(Started event, Emitter<PhotosGalleryState> emit) async {
    final PermissionState ps = await PhotoManager.requestPermissionExtend();
    if (ps.isAuth) {
      if (state.listAlbum.isEmpty || state.album == null) {
        log('load');
        await PhotoManager.getAssetPathList(
          type: RequestType.image,
        ).then((value) => emit(state.copyWith(
            listAlbum: value, album: value.isEmpty ? null : value.first)));
      }
      if (state.album != null) {
        await state.album!
            .getAssetListRange(start: 0, end: state.totalCount)
            .then((value) => emit(state.copyWith(listImages: value)));
      }
    } else {
      await PhotoManager.openSetting().whenComplete(() => add(const Started()));
      // Limited(iOS) or Rejected, use `==` for more precise judgements.
      // You can call `PhotoManager.openSetting()` to open settings for further steps.
    }
  }
}
