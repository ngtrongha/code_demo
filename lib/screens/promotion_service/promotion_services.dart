part of 'bloc/promotion_services_bloc.dart';

class PromotionServicesScreen extends StatelessWidget {
  const PromotionServicesScreen({super.key});
  static String get path => '/promotion_services';
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PromotionServicesBloc, PromotionServicesState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<PromotionServicesBloc>(context);
        return Scaffold(
          appBar: AppBar(
            title: 'Dịch vụ'.titleLarge(color: Colors.white),
            actions: [
              const Icon(Icons.search)
                  .onTap(
                      // onTap: () => bloc.add(const IsSearch()),
                      )
                  .marginOnly(right: 10)
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => Get.bottomSheet(
                BlocProvider.value(
                  value: bloc,
                  child: const ChooseServicePromotion(),
                ),
                ignoreSafeArea: true,
                isScrollControlled: true,
                enableDrag: false),
            mini: true,
            backgroundColor: Colors.blue,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          body: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: state.listServicePromotion.map((e) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Colors.black26))),
                  child: Row(
                    children: [
                      ImageCached(
                        image: e.image,
                        width: 40.sp,
                        height: 40.sp,
                      ).marginOnly(right: 10),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          e.name.bodyLarge().marginOnly(bottom: 5),
                          'Giá: ${Utils.moneyFormat(e.price)}'.bodyMedium()
                        ],
                      )),
                      const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ).onTap(
                        onTap: () => bloc.add(DeleteService(e)),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          )),
        );
      },
    );
  }
}
