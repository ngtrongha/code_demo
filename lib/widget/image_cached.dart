import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageCached extends StatelessWidget {
  const ImageCached(
      {Key? key,
      required this.image,
      this.width,
      this.height,
      this.disable = false,
      this.borderRadius = 8,
      this.alignment = Alignment.center,
      this.fit = BoxFit.cover})
      : super(key: key);
  final String image;
  final double? width;
  final double? height;
  final double borderRadius;
  final BoxFit fit;
  final Alignment alignment;
  final bool disable;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      width: width ?? double.infinity,
      height: height ?? 100.sp,
      alignment: alignment,
      imageBuilder: (context, imageProvider) => Container(
        width: width ?? double.infinity,
        height: height ?? 100.sp,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            image: DecorationImage(
                image: imageProvider,
                fit: fit,
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(disable ? 0.7 : 0),
                    BlendMode.hardLight))),
      ),
      fit: fit,
      // progressIndicatorBuilder: (context, url, progress) =>
      //     CircularProgressIndicator(
      //       color: AppColors.secondaryColor,
      //   value: progress.downloaded / (progress.totalSize ?? 1),
      // ),
      errorWidget: (context, url, error) {
        return const Icon(
          Icons.error,
          color: Colors.red,
        );
      },
      // placeholder: (context, url) => ClipRRect(
      //   borderRadius: BorderRadius.circular(borderRadius),
      //   child: Image.asset(
      //     AppImage.placeholder,
      //     fit: fit,
      //   ),
      // ),
    );
  }
}
