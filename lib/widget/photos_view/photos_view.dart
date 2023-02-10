import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:code_demo/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../image_cached.dart';

class PhotosViewWidget extends StatefulWidget {
  const PhotosViewWidget(
      {super.key, required this.images, required this.initImage});
  final List<dynamic> images;
  final dynamic initImage;
  @override
  State<PhotosViewWidget> createState() => _PhotosViewWidgetState();
}

class _PhotosViewWidgetState extends State<PhotosViewWidget> {
  late PageController pageController;
  int index = 0;
  @override
  void initState() {
    super.initState();

    if (widget.initImage != null) {
      index = widget.images.indexOf(widget.initImage);
    }
    pageController = PageController(initialPage: index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topLeft,
      children: [
        SizedBox(
            height: ScreenUtil().screenHeight,
            width: double.infinity,
            child: PhotoViewGallery.builder(
              scrollPhysics: const BouncingScrollPhysics(),
              pageController: pageController,
              builder: (context, index) {
                if (widget.images[index] is File) {
                  return PhotoViewGalleryPageOptions(
                    imageProvider: FileImage(widget.images[index]),
                    initialScale: PhotoViewComputedScale.contained,
                    minScale: PhotoViewComputedScale.contained,
                    heroAttributes: PhotoViewHeroAttributes(
                        tag: widget.images[index].hashCode),
                  );
                }
                return PhotoViewGalleryPageOptions(
                  imageProvider:
                      CachedNetworkImageProvider(widget.images[index].image),
                  initialScale: PhotoViewComputedScale.contained,
                  minScale: PhotoViewComputedScale.contained,
                  heroAttributes:
                      PhotoViewHeroAttributes(tag: widget.images[index].id),
                );
              },
              itemCount: widget.images.length,
              loadingBuilder: (context, event) => Center(
                child: SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: CircularProgressIndicator(
                    value: event == null
                        ? 0
                        : event.cumulativeBytesLoaded /
                            event.expectedTotalBytes!,
                  ),
                ),
              ),
              // backgroundDecoration: widget.backgroundDecoration,
              // pageController: widget.pageController,
              onPageChanged: (i) => setState(() => index = i),
            )),
        InkWell(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          onTap: Get.back,
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 25.sp,
          ).marginOnly(
            top: ScreenUtil().statusBarHeight + 15,
            left: 15,
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          child: Text(
            '${index + 1}/${widget.images.length}',
            textAlign: TextAlign.center,
            style: Get.textTheme.titleMedium!.copyWith(color: Colors.white),
          ).marginOnly(
            top: ScreenUtil().statusBarHeight + 15,
            left: 15,
          ),
        ),
        if (widget.images.isNotEmpty)
          Positioned(
              bottom: 25.sp,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: widget.images.map((e) {
                    if (e is File) {
                      return Container(
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: index == widget.images.indexOf(e)
                                    ? Colors.white
                                    : Colors.black,
                                width: 2)),
                        child: Image.file(
                          e,
                          width: 68.sp,
                          height: 68.sp,
                          fit: BoxFit.cover,
                        ),
                      ).onTap(
                        onTap: () => pageController.animateToPage(
                            widget.images.indexOf(e),
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.bounceIn),
                      );
                    }
                    return Container(
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: index == widget.images.indexOf(e)
                                  ? Colors.white
                                  : Colors.black,
                              width: 2)),
                      child: ImageCached(
                        image: e.image,
                        width: 68.sp,
                        height: 68.sp,
                      ),
                    ).onTap(
                      onTap: () => pageController.animateToPage(
                          widget.images.indexOf(e),
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.bounceIn),
                    );
                  }).toList(),
                ),
              ))
      ],
    ));
  }
}
