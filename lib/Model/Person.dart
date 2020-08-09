import 'Transaction.dart';

class Person {
  int id;
  String name;
  String description;
  List<Transaction> transactions;

  Person({this.id, this.name, this.description, this.transactions});

  Person.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    if (json['transaction'] != null) {
      transactions = new List<Transaction>();
      json['transaction'].forEach((v) {
        transactions.add(new Transaction.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    if (this.transactions != null) {
      data['transaction'] = this.transactions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
