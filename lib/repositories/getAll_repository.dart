
//This is a abstract class to get the coutn of all persons in repository
//and get count of all events
abstract class getAllRepository{
  Future<void> getAllPersons();
  Future<void>getAllEvents();
}