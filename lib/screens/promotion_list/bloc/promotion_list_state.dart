part of 'promotion_list_bloc.dart';

@freezed
class PromotionListState with _$PromotionListState {
  const factory PromotionListState({
    @Default(false) final bool isSearch,
    @Default(false) final bool showType,
    @Default(false) final bool showApproved,
    @Default(false) final bool showStatus,
    @Default(false) final bool showTime,
    @Default(false) final bool isListLoading,
    @Default(0) final int total_count,
    @Default(1) final int page,
    final DateTime? fromDate,
    final DateTime? toDate,
    @Default(SystemConfig()) final SystemConfig type,
    @Default(SystemConfig()) final SystemConfig approved,
    @Default([]) final List<DiscountList> listDiscount,
    @Default([]) final List<SystemConfig> listType,
    @Default([]) final List<SystemConfig> listApproved,
    @Default([]) final List<bool> list_active,
  }) = _PromotionListState;
}
