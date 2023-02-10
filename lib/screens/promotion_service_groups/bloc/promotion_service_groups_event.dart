part of 'promotion_service_groups_bloc.dart';

@freezed
class PromotionServiceGroupsEvent with _$PromotionServiceGroupsEvent {
  const factory PromotionServiceGroupsEvent.startedGroup(final int id) =
      StartedGroup;
  const factory PromotionServiceGroupsEvent.addGroup(final ServiceGroup value) =
      AddGroup;
  const factory PromotionServiceGroupsEvent.getOldGroup({
    @Default([]) final List<ServicePromotion> listService,
    @Default([]) final List<ServicePromotion> listServiceDelete,
  }) = GetOldGroup;
  const factory PromotionServiceGroupsEvent.deleteGroup(
      final ServicePromotion value) = DeleteGroup;
}
