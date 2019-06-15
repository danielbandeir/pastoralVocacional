import 'dart:collection';

import 'package:pastoravocacional/models/visao_vida_religiosa.dart';

class VidaReligiosa {
  VisaoVidaReligiosa visaoVidaReligiosa;
  String experienciaDeus;
  String relacaoIgreja; 

  VidaReligiosa.fromJSON(LinkedHashMap<String, dynamic> map){
    this.visaoVidaReligiosa = VisaoVidaReligiosa.fromJSON(map['visaoVidaReligiosa']);
    this.experienciaDeus = map['experienciaDeus'];
    this.relacaoIgreja = map['relacaoIgreja'];
  }

  Map<String, dynamic> toMap() => {
    'visaoVidaReligiosa': this.visaoVidaReligiosa.toMap(),
    'experienciaDeus': this.experienciaDeus,
    'relacaoIgreja': this.relacaoIgreja
  };
}