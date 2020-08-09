import 'dart:math';

import 'package:khata/Model/Transaction.dart';

class TransactionService {
  List<Transaction> transections = [];

  List<Transaction> getAll(int personId) {
    transections.addAll(dummyTransections(10, personId: personId));
    return this.transections;
  }

  bool add(Transaction transaction) {
    bool isAdded = true;
    transections.add(transaction);
    return isAdded;
  }

  List<Transaction> dummyTransections(int count, {personId}) {
    var dummy = List<Transaction>();
    for (int i = 0; i < count; i++) {
      dummy.add(new Transaction(
          id: i,
          personId: personId,
          description: "Random Text" + Random().nextInt(10).toString(),
          transectionTime: DateTime.now().toString()));
    }

    return dummy;
  }
}
