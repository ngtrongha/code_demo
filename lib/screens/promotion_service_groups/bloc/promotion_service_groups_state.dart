part of 'promotion_service_groups_bloc.dart';

@freezed
class PromotionServiceGroupsState with _$PromotionServiceGroupsState {
  const factory PromotionServiceGroupsState({
    @Default(false) final bool isLoading,
    @Default(0) final int total_count,
    @Default(1) final int page,
    @Default([]) final List<ServicePromotion> listServiceGroupPromotion,
    @Default([]) final List<ServicePromotion> listDeletePromotion,
    @Default([]) final List<ServiceGroup> listGroup,
  }) = _PromotionServiceGroupsState;
}
