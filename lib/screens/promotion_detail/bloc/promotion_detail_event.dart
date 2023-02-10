part of 'promotion_detail_bloc.dart';

@freezed
class PromotionDetailEvent with _$PromotionDetailEvent {
  const factory PromotionDetailEvent.started() = Started;
  const factory PromotionDetailEvent.active() = Active;
  const factory PromotionDetailEvent.changeTab(final String tab) = ChangeTab;
}
