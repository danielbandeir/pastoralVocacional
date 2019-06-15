import 'dart:collection';

import 'package:pastoravocacional/models/evento.dart';

class SemanaConvivencia extends Evento {
  SemanaConvivencia.fromJSON(LinkedHashMap<String, dynamic> map)
      : super.fromJSON(map);
}
