import 'dart:collection';

import 'package:pastoravocacional/models/acompanhamento_vocacional.dart';

class Integrante{
  String nome;
  String idade;
  String nomeMae;
  String nomePai;
  String cidade;
  String paroquia;
  String dataNascimento;
  AcompanhamentoVocacional acompanhamentoVocacional;

  Integrante.fromJSON(LinkedHashMap<String, dynamic> map){
    this.nome = map['nome'];
    this.idade = map['idade'];
    this.nomeMae = map['nomeMae'];
    this.nomePai = map['nomePai'];
    this.cidade = map['cidade'];
    this.paroquia = map['paroquia'];
    this.dataNascimento = map['dataNascimento'];
    this.acompanhamentoVocacional = AcompanhamentoVocacional.fromJSON(map['acompanhamentoVocacional']);
  }

  Map<String, dynamic> toMap() => {
    'nome': this.nome,
    'idade': this.idade,
    'nomeMae': this.nomeMae,
    'nomePai': this.nomePai,
    'cidade': this.cidade,
    'paroquia': this.paroquia,
    'dataNascimento': this.dataNascimento,
    'acompanhamentoVocacional': this.acompanhamentoVocacional.toMap()
  };
}