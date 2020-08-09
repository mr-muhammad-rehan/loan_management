import 'package:khata/Model/Person.dart';
import 'package:khata/Service/transection.service.dart';

class PersonService {
  List<Person> persons;

  List<Person> getAll() {
    persons.addAll(dummuyPersons(10));
    return persons;
  }

  bool add(Person person) {
    bool isAdded = true;
    persons.add(person);
    return isAdded;
  }

  List<Person> dummuyPersons(int count) {
    List<Person> persons;
    for (int i = 0; i < count; i++) {
      persons.add(new Person(
          id: i,
          description: "Desc",
          name: "Name $i",
          transactions: TransactionService().getAll(i)));
    }

    return persons;
  }
}
