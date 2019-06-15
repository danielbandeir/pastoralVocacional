import 'package:pastoravocacional/models/integrante.dart';

abstract class PersonRepository{
  Future<void> createPerson(Integrante person);
  Future<void> readPerson(Integrante person);
  Future<void> updatePerson(Integrante person);
  Future<void> deletePerson(Integrante person);
}