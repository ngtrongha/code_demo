part of 'promotion_services_bloc.dart';

@freezed
class PromotionServicesState with _$PromotionServicesState {
  const factory PromotionServicesState({
    @Default(false) final bool isLoading,
    @Default(0) final int total_count,
    @Default(1) final int page,
    @Default([]) final List<ServicePromotion> listServicePromotion,
    @Default([]) final List<ServicePromotion> listDeletePromotion,
    @Default([]) final List<ServiceModel> listService,
  }) = _PromotionServicesState;
}
