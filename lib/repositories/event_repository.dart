//This is a package to import models
import 'package:pastoravocacional/models/evento.dart';

//Sample crud for event in firestore
abstract class EventRepository{
  Future<void> createEvent(Evento event);
  Future<void> readEvent(Evento event);
  Future<void> deleteEvent(Evento event);
  Future<void> updateEvent(Evento event);
}