import 'dart:collection';

class Evento {
  String data;
  String local;

  Evento.fromJSON(LinkedHashMap<String, dynamic> map){
    this.data = map['data'];
    this.local = map['local'];
  }  

  Map<String, dynamic> toMap() => {
    'data': this.data,
    'local': this.local
  };
}