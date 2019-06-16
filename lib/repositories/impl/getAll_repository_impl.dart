import 'package:pastoravocacional/repositories/getAll_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetAllRepositoryImpl implements GetAllRepository{

  @override
  Future<int> getAllPersons() async{
    return (await Firestore.instance
                .collection('Integrantes')
                .getDocuments()
                ).documents.length;
  }

  @override
  Future<int> getAllEvents() async{
    return (await Firestore.instance
                .collection('eventos')
                .getDocuments()
                ).documents.length;
  }
  
}