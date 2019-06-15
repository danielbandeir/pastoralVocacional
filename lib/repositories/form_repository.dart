import 'package:pastoravocacional/models/form_vocacional.dart';

abstract class FormRepository{
  Future<void> createForm(FormVocacional formVocacional);
  Future<void> updateForm(FormVocacional formVocacional);
  Future<void> deleteForm(FormVocacional formVocacional);
}