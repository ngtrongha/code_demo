part of 'photos_gallery_bloc.dart';

@freezed
class PhotosGalleryEvent with _$PhotosGalleryEvent {
  const factory PhotosGalleryEvent.started() = Started;
  const factory PhotosGalleryEvent.chooseImage(final String id) = ChooseImage;
  const factory PhotosGalleryEvent.deleteImage(final String id) = DeleteImage;
  const factory PhotosGalleryEvent.shotImage() = ShotImage;
  const factory PhotosGalleryEvent.chooseAlbum(final String id) = ChooseAlbum;
  const factory PhotosGalleryEvent.saveData() = SaveData;
  const factory PhotosGalleryEvent.onRefresh() = OnRefresh;
  const factory PhotosGalleryEvent.onLoad() = OnLoad;
}
