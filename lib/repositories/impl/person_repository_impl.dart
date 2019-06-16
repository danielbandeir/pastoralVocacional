import 'package:pastoravocacional/models/integrante.dart';
import 'package:pastoravocacional/repositories/person_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PersonRepositoryImpl implements PersonRepository{
  @override
  Future<void> createPerson(Integrante person) async{
    await Firestore.instance
              .collection('Integrantes')
              .document(person.nome)
              .setData({'Integrante' : person});
  }

  @override
  Future<void> readPerson(Integrante person) async{
    await Firestore.instance
              .collection('Integrantes')
              .document(person.nome)
              .get();
  }

  @override
  Future<void> updatePerson(Integrante person) async{
    await Firestore.instance
              .collection('Integrantes')
              .document(person.nome)
              .updateData({'Integrante' : person});
  }

  @override
  Future<void> deletePerson(Integrante person) async{
    await Firestore.instance
              .collection('Integrantes')
              .document(person.nome)
              .delete();
  }
}