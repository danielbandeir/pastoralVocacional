import 'dart:collection';

import 'package:pastoravocacional/models/evento.dart';

class EncontroVocacional extends Evento {
  EncontroVocacional.fromJSON(LinkedHashMap<String, dynamic> map)
      : super.fromJSON(map);
}
