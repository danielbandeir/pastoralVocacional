import 'dart:collection';

import 'package:pastoravocacional/models/acompanhamento_vocacional.dart';
import 'package:pastoravocacional/models/discernimento.dart';
import 'package:pastoravocacional/models/encontro_vocacional.dart';
import 'package:pastoravocacional/models/formulacaoVocacional.dart';
import 'package:pastoravocacional/models/personalidade.dart';
import 'package:pastoravocacional/models/semana_convivencia.dart';
import 'package:pastoravocacional/models/vida_religiosa.dart';
import 'package:pastoravocacional/models/visao_vida_religiosa.dart';
import 'package:pastoravocacional/models/integrante.dart';

class FormVocacional{
  Integrante integrante;
  AcompanhamentoVocacional acompanhamentoVocacional;
  FormulacaoVocacional formulacaoVocacional;
  EncontroVocacional encontroVocacional;
  SemanaConvivencia semanaConvivencia;
  Discernimento discernimento;
  Personalidade personalidade;
  VisaoVidaReligiosa visaoVidaReligiosa;
  VidaReligiosa vidaReligiosa;

  FormVocacional.fromJson(LinkedHashMap<String,dynamic> map){
    this.integrante = Integrante.fromJSON(map['integrante']);
    this.formulacaoVocacional = FormulacaoVocacional.fromJSON(map['formulacaoVocacional']);
    this.encontroVocacional = EncontroVocacional.fromJSON(map['encontroVocacional']);
    this.semanaConvivencia = SemanaConvivencia.fromJSON(map['semanaConvivencia']);
    this.discernimento = Discernimento.fromJSON(map['discernimento']);
    this.personalidade = Personalidade.fromJSON(map['personalidade']);
    this.visaoVidaReligiosa = VisaoVidaReligiosa.fromJSON(map['visaoVidaReligiosa']);
    this.vidaReligiosa = VidaReligiosa.fromJSON(map['vidaReligiosa']);
  }

  Map<String, dynamic> toMap() => {
    'integrante': this.integrante.toMap(),
    'acompanhamentoVocacional' : this.acompanhamentoVocacional.toMap(),
    'formulacaoVocacional' : this.formulacaoVocacional.toMap(),
    'encontroVocacional' : this.encontroVocacional.toMap(),
    'semanaConvivencia' : this.semanaConvivencia.toMap(),
    'discernimento' : this.discernimento.toMap(),
    'personalidade' : this.personalidade.toMap(),
    'visaoVidaReligiosa' : this.visaoVidaReligiosa.toMap(),
    'vidaReligiosa' : this.vidaReligiosa.toMap()
  };
}