import 'dart:collection';

class Personalidade {
  String autoConceito;
  String caraterHumor;
  String emocoesPredominantes;
  String relacoes;
  String profissoes;
  String euIdeal;

  Personalidade.fromJSON(LinkedHashMap<String, dynamic> map){
    this.autoConceito = map['autoConceito'];
    this.caraterHumor = map['caraterHumor'];
    this.emocoesPredominantes = map['emocoesPredominantes'];
    this.relacoes = map['relacoes'];
    this.profissoes = map['profissoes'];
    this.euIdeal = map['euIdeal'];
  }

  Map<String, dynamic> toMap() => {
    'autoConceito': this.autoConceito,
    'caraterHumor': this.caraterHumor,
    'emocoesPredominantes': this.emocoesPredominantes,
    'relacoes': this.relacoes,
    'profissoes': this.profissoes,
    'euIdeal': this.euIdeal
  };
}