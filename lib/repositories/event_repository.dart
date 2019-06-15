import 'package:pastoravocacional/models/evento.dart';

abstract class EventRepository{
  Future<void> createEvent(Evento event);
  Future<void> readEvent(Evento event);
  Future<void> deleteEvent(Evento event);
  Future<void> updateEvent(Evento event);
}