import 'package:get_it/get_it.dart';
import 'package:music/view_model/service_view_model.dart';

final getIt = GetIt.instance;
void setupLocator(){
  getIt.registerLazySingleton(()=>ServiceViewModel());
}