import 'dart:collection';

class VisaoVidaReligiosa {
  String votos;
  String vidaComunitaria;
  String gostos;

  VisaoVidaReligiosa.fromJSON(LinkedHashMap<String, dynamic> map) {
    this.votos = map['votos'];
    this.vidaComunitaria = map['vidaComunitaria'];
    this.gostos = map['gostos'];
  }

  Map<String, dynamic> toMap() => {
        'votos': this.votos,
        'vidaComunitaria': this.vidaComunitaria,
        'gostos': this.gostos
      };
}
