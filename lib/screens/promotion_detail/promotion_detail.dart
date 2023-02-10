part of 'bloc/promotion_detail_bloc.dart';

class PromotionDetailScreen extends StatelessWidget {
  const PromotionDetailScreen({super.key});
  static String get path => '/promotion_detail';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PromotionDetailBloc()..add(const Started()),
      child: BlocBuilder<PromotionDetailBloc, PromotionDetailState>(
        builder: (context, state) {
          final bloc = BlocProvider.of<PromotionDetailBloc>(context);
          if (state.promotion.approved_key == 'admin.approved.waiting') {
            return UIWattingSubmit(
              bloc: bloc,
              state: state,
            );
          }
          return UISubmited(
            bloc: bloc,
            state: state,
          );
        },
      ),
    );
  }
}
