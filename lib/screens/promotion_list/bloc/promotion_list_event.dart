part of 'promotion_list_bloc.dart';

@freezed
class PromotionListEvent with _$PromotionListEvent {
  const factory PromotionListEvent.started() = Started;
  const factory PromotionListEvent.syncData() = SyncData;
  const factory PromotionListEvent.onRefresh() = OnRefresh;
  const factory PromotionListEvent.onLoad() = OnLoad;
  const factory PromotionListEvent.isSearch() = IsSearch;
  const factory PromotionListEvent.removeDateTime() = RemoveDateTime;
  const factory PromotionListEvent.chooseActive({
    required final bool active,
  }) = ChooseActive;
  const factory PromotionListEvent.chooseType({
    required final SystemConfig config,
  }) = ChooseType;
  const factory PromotionListEvent.chooseApproved({
    required final SystemConfig config,
  }) = ChooseApproved;
  const factory PromotionListEvent.chooseTime(final String type) = ChooseTime;
  const factory PromotionListEvent.showFilter({
    @Default(false) final bool showActive,
    @Default(false) final bool showApproved,
    @Default(false) final bool showType,
    @Default(false) final bool showTime,
  }) = ShowFilter;
}
