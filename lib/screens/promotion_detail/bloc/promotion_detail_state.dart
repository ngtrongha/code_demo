part of 'promotion_detail_bloc.dart';

@freezed
class PromotionDetailState with _$PromotionDetailState {
  const factory PromotionDetailState({
    @Default(false) final bool isLoading,
    @Default(0) final int total_count,
    @Default(1) final int page,
    @Default(PromotionModel()) final PromotionModel promotion,
    @Default([]) final List<CustomerVoucherList> listCustomer,
    required final String tab,
  }) = _PromotionDetailState;
}
