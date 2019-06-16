//Model for add the form person
import 'package:pastoravocacional/models/form_vocacional.dart';

//Sample crud for add form to database
abstract class FormRepository{
  Future<void> createForm(FormVocacional formVocacional);
  Future<void> readForm(FormVocacional formVocacional);
  Future<void> updateForm(FormVocacional formVocacional);
  Future<void> deleteForm(FormVocacional formVocacional);
}