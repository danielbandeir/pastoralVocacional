//Model to call for integrante crud repository
import 'package:pastoravocacional/models/integrante.dart';

//Abstract class for crud in person repository
abstract class PersonRepository{
  Future<void> createPerson(Integrante person);
  Future<void> readPerson(Integrante person);
  Future<void> updatePerson(Integrante person);
  Future<void> deletePerson(Integrante person);
}