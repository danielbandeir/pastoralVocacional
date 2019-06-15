import 'dart:collection';

import 'package:pastoravocacional/models/evento.dart';

class FomulacaoVocacional {
  Evento evento;
  String interacaoEntrevista;
  String impressaoGeral;
  String observacaoEntrevistador;

  FomulacaoVocacional.fromJSON(LinkedHashMap<String, dynamic> map){
    this.evento = Evento.fromJSON(map['evento']);
    this.interacaoEntrevista = map['interacaoEntrevista'];
    this.impressaoGeral = map['impressaoGeral'];
    this.observacaoEntrevistador = map['observacaoEntrevistador'];
  }

  Map<String, dynamic> toMap() => {
    'evento': evento.toMap(),
    'interacaoEntrevista': this.interacaoEntrevista,
    'impressaoGeral': this.impressaoGeral,
    'observacaoEntrevistador': this.observacaoEntrevistador
  };  
}