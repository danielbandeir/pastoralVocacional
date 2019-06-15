import 'dart:collection';

class Discernimento {
  String situacaoEvolucaoVocacional;
  String problemasSurgidosProcesso;
  String problemasApresentadoProcesso;

  Discernimento.fromJSON(LinkedHashMap<String, dynamic> map){
    this.situacaoEvolucaoVocacional = map['situacaoEvolucaoVocacional'];
    this.problemasSurgidosProcesso = map['problemasSurgidosProcesso'];
    this.problemasApresentadoProcesso = map['problemasApresentadoProcesso'];
  }

  Map<String, dynamic>toMap() => {
    'situacaoEvolucaoVocacional': this.situacaoEvolucaoVocacional,
    'problemasSurgidosProcesso': this.problemasSurgidosProcesso,
    'problemasApresentadoProcesso': this.problemasApresentadoProcesso
  };
}