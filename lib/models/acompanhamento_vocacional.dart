import 'dart:collection';

import 'package:pastoravocacional/models/discernimento.dart';
import 'package:pastoravocacional/models/encontro_vocacional.dart';
import 'package:pastoravocacional/models/formulacaoVocacional.dart';
import 'package:pastoravocacional/models/personalidade.dart';
import 'package:pastoravocacional/models/semana_convivencia.dart';
import 'package:pastoravocacional/models/vida_religiosa.dart';

class AcompanhamentoVocacional {
  List<EncontroVocacional> encontrosVocacionais;
  List<SemanaConvivencia> semanasConvivencia;
  List<FormulacaoVocacional> formulacoesVocacional;
  Discernimento discernimento;
  String historicoFamiliar;
  String historicoPessoal;
  Personalidade personalidade;
  VidaReligiosa vidaReligiosa;
  String conclusaoAcompanhamento;

  AcompanhamentoVocacional.fromJSON(LinkedHashMap<String, dynamic> map) {
    //TODO
    this.discernimento = Discernimento.fromJSON(map['discernimento']);
    this.historicoFamiliar = map['historicoFamiliar'];
    this.historicoPessoal = map['historicoPessoal'];
    this.personalidade = Personalidade.fromJSON(map['personalidade']);
    this.vidaReligiosa = VidaReligiosa.fromJSON(map['vidaReligiosa']);
    this.conclusaoAcompanhamento = map['conclusaoAcompanhamento'];
  }

  Map<String, dynamic> toMap() => {
    //TODO
    'discernimento': this.discernimento.toMap(),
    'historicoFamiliar': this.historicoFamiliar,
    'historicoPessoal': this.historicoPessoal,
    'personalidade': this.personalidade.toMap(),
    'vidaReligiosa': this.vidaReligiosa.toMap(),
    'conclusaoAcompanhamento': this.conclusaoAcompanhamento
  };
}
