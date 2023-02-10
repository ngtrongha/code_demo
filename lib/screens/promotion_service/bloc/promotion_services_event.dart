part of 'promotion_services_bloc.dart';

@freezed
class PromotionServicesEvent with _$PromotionServicesEvent {
  const factory PromotionServicesEvent.startedService(final int id) =
      StartedService;
  const factory PromotionServicesEvent.onRefresh() = OnRefresh;
  const factory PromotionServicesEvent.onLoad() = OnLoad;
  const factory PromotionServicesEvent.getOldService({
    @Default([]) final List<ServicePromotion> listService,
    @Default([]) final List<ServicePromotion> listServiceDelete,
  }) = GetOldService;
  const factory PromotionServicesEvent.addService(final ServiceModel value) =
      AddService;
  const factory PromotionServicesEvent.deleteService(
      final ServicePromotion value) = DeleteService;
}
