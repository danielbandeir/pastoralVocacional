import 'package:pastoravocacional/repositories/getAll_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class getAllRepositoryImpl implements getAllRepository{

  @override
  Future<void> getAllPersons() async{
    await Firestore.instance
                .collection('Integrantes')
                .getDocuments()
                .then((value){
                  value.documents.length;
                });
  }

  @override
  Future<void> getAllEvents() async{
    await Firestore.instance
                .collection('eventos')
                .getDocuments()
                .then((value){
                  value.documents.length;
                });
  }
  
}