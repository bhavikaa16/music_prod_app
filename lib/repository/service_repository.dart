import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:music/models/service_model.dart';

class ServiceRepository{
  final _firestore = FirebaseFirestore.instance;
  Future<List<ServiceModel>> getServices()async{
    final snapshot=await _firestore.collection('services')
        .orderBy('order')
    .get();
    return snapshot.docs
        .map((doc)=>ServiceModel.fromMap(doc.data()))
        .toList();
  }
}