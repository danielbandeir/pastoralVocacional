import 'package:pastoravocacional/repositories/event_repository.dart';
import 'package:pastoravocacional/models/evento.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EventRepositoryImpl implements EventRepository{

  @override
  Future<void> createEvent(Evento event) async{
    await Firestore.instance
                .collection('eventos')
                .document(event.local)
                .setData({'evento' : event});
  }

  @override
  Future<void> readEvent(Evento event) async{
    await Firestore.instance
                .collection('eventos')
                .document(event.local)
                .get();
  }

  @override
  Future<void> updateEvent(Evento event) async{
    await Firestore.instance
                .collection('eventos')
                .document(event.local)
                .updateData({'evento' : event});
  }

  @override
  Future<void> deleteEvent(Evento event) async{
    await Firestore.instance
                .collection('eventos')
                .document(event.local)
                .delete();
  }

}