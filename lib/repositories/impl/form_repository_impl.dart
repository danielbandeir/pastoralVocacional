import 'package:pastoravocacional/models/form_vocacional.dart';
import 'package:pastoravocacional/repositories/form_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FormRepositoryImpl implements FormRepository{
  @override
  Future<void> createForm(FormVocacional formVocacional){
    Firestore.instance
                .collection('formularios')
                .document(formVocacional.integrante.nome)
                .setData({'formulario' : formVocacional});
  }

  @override
  Future<void> readForm(FormVocacional formVocacional){
    Firestore.instance
                .collection('formularios')
                .document(formVocacional.integrante.nome)
                .get();
  }

  @override
  Future<void> updateForm(FormVocacional formVocacional){
    Firestore.instance
                .collection('formularios')
                .document(formVocacional.integrante.nome)
                .updateData({'formulario' : formVocacional});
  }

  @override
  Future<void> deleteForm(FormVocacional formVocacional){
    Firestore.instance
                .collection('formularios')
                .document(formVocacional.integrante.nome)
                .delete();
  }
}
