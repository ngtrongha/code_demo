part of 'promotion_entry_bloc.dart';

@freezed
class PromotionEntryState with _$PromotionEntryState {
  const factory PromotionEntryState({
    @Default(false) final bool isLoading,
    @Default(false) final bool isActive,
    @Default([]) final List<File> listImage,
    @Default(PromotionModel()) final PromotionModel promotion,
    @Default([]) final List<ServicePromotion> listService,
    @Default([]) final List<ServicePromotion> listServiceDelete,
    @Default([]) final List<ServicePromotion> listServiceGroup,
    @Default([]) final List<ServicePromotion> listServiceGroupDelete,
    @Default([]) final List<MediaList> media_delete_list,
    final File? avatar,
    required final DateTime fromDate,
    required final DateTime toDate,
    required final DateTime openDate,
    required final SystemConfig discountType,
    required final SystemConfig discountTime,
    required final SystemConfig discountScope,
    required final List<SystemConfig> listDiscountType,
    required final List<SystemConfig> listDiscountTime,
    required final List<SystemConfig> listDiscountScope,
  }) = _PromotionEntryState;
}
