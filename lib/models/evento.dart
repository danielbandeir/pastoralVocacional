import 'dart:collection';

class Evento {
  String data;
  String local;
  String eventType;

  Evento.fromJSON(LinkedHashMap<String, dynamic> map){
    this.data = map['data'];
    this.local = map['local'];
    this.eventType = map['tipoEvento'];
  }  

  Map<String, dynamic> toMap() => {
    'data': this.data,
    'local': this.local,
    'tipoEvento' : this.eventType
  };
}