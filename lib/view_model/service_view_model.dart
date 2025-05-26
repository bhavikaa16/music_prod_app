import 'package:flutter/cupertino.dart';
import 'package:music/models/service_model.dart';
import 'package:music/repository/service_repository.dart';


class ServiceViewModel extends ChangeNotifier{
  final _repository=ServiceRepository();
  List<ServiceModel>services=[];
  bool isloading=true;
  ServiceViewModel(){
    fetchServices();
  }

  Future<void>fetchServices() async{
    isloading=true;

    notifyListeners();
    services= await _repository.getServices();
    isloading = false;
    notifyListeners();
  }
}

