part of 'bloc/promotion_service_groups_bloc.dart';

class PromotionServiceGroupsScreen extends StatelessWidget {
  const PromotionServiceGroupsScreen({super.key});
  static String get path => '/promotion_service_groups';
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PromotionServiceGroupsBloc, PromotionServiceGroupsState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<PromotionServiceGroupsBloc>(context);
        return Scaffold(
          appBar: AppBar(
            title: 'Nhóm dịch vụ'.titleLarge(color: Colors.white),
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
                  child: const ChooseServiceGroupPromotion(),
                ),
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
              children: state.listServiceGroupPromotion
                  .map((e) => Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black26))),
                        child: Row(
                          children: [
                            Expanded(child: e.name.bodyLarge()),
                            Icon(
                              Icons.delete,
                              color: Colors.red,
                            ).onTap(
                              onTap: () => bloc.add(DeleteGroup(e)),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          )),
        );
      },
    );
  }
}
