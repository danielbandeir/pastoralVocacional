import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:pastoravocacional/repositories/getAll_repository.dart';

class DashboardBloc extends BlocBase {
  final GetAllRepository getAllRepository;

  DashboardBloc(this.getAllRepository);

  Future<int> getLengthEvents() async {
    try {
      return await getAllRepository.getAllEvents();
    } catch (e) {
      return 0;
    }
  }
  Future<int> getLengthPeople() async {
    try {
      return await getAllRepository.getAllPersons();
    } catch (e) {
      return 0;
    }
  }
}
