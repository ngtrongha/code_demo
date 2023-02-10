part of 'photos_gallery_bloc.dart';

@freezed
class PhotosGalleryState with _$PhotosGalleryState {
  const factory PhotosGalleryState({
    @Default(false) final bool isLoading,
    @Default([]) List<AssetPathEntity> listAlbum,
    AssetPathEntity? album,
    @Default(20) int totalCount,
    @Default([]) List<AssetEntity> listImages,
    @Default([]) List<AssetEntity> imagesChoose,
  }) = _PhotosGalleryState;
}
