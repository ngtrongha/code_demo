part of 'promotion_entry_bloc.dart';

@freezed
class PromotionEntryEvent with _$PromotionEntryEvent {
  const factory PromotionEntryEvent.startedEntry() = StartedEntry;
  const factory PromotionEntryEvent.chooseEffectiveTime() = ChooseEffectiveTime;
  const factory PromotionEntryEvent.chooseEndTime() = ChooseEndTime;
  const factory PromotionEntryEvent.create() = Create;
  const factory PromotionEntryEvent.changeActive() = ChangeActive;
  const factory PromotionEntryEvent.chooseTimeStartCollecting() =
      ChooseTimeStartCollecting;
  const factory PromotionEntryEvent.chooseAvatar() = ChooseAvatar;
  const factory PromotionEntryEvent.chooseImage() = ChooseImage;
  const factory PromotionEntryEvent.deleteImage(final dynamic image) =
      DeleteImage;
  const factory PromotionEntryEvent.addService({
    @Default([]) final List<ServicePromotion> listService,
    @Default([]) final List<ServicePromotion> listServiceDelete,
  }) = AddService;
  const factory PromotionEntryEvent.addServiceGroup({
    @Default([]) final List<ServicePromotion> listGroupService,
    @Default([]) final List<ServicePromotion> listServiceGroupDelete,
  }) = AddServiceGroup;
  const factory PromotionEntryEvent.chooseDiscountTime(
      final SystemConfig value) = ChooseDiscountTime;
  const factory PromotionEntryEvent.chooseDiscountType(
      final SystemConfig value) = ChooseDiscountType;
  const factory PromotionEntryEvent.chooseDiscountScope(
      final SystemConfig value) = ChooseDiscountScope;
}
