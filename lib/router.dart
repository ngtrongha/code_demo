import 'package:get/get_navigation/src/routes/get_route.dart';

import 'screens/promotion_detail/bloc/promotion_detail_bloc.dart';
import 'screens/promotion_entry/bloc/promotion_entry_bloc.dart';
import 'screens/promotion_list/bloc/promotion_list_bloc.dart';
import 'screens/promotion_service/bloc/promotion_services_bloc.dart';
import 'screens/promotion_service_groups/bloc/promotion_service_groups_bloc.dart';

final promotionPages = [
  GetPage(
      name: PromotionDetailScreen.path,
      page: () => const PromotionDetailScreen()),
  GetPage(
      name: PromotionListScreen.path, page: () => const PromotionListScreen()),
  GetPage(
      name: PromotionEntryScreen.path,
      page: () => const PromotionEntryScreen()),
  GetPage(
      name: PromotionServiceGroupsScreen.path,
      page: () => const PromotionServiceGroupsScreen()),
  GetPage(
      name: PromotionServicesScreen.path,
      page: () => const PromotionServicesScreen()),
];
