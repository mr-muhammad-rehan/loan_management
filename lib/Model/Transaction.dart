class Transaction {
  int id;
  int personId;
  String transectionTime;
  String description;

  Transaction({this.id, this.personId, this.transectionTime, this.description});

  Transaction.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    personId = json['PersonId'];
    transectionTime = json['TransectionTime'];
    description = json['Description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['PersonId'] = this.personId;
    data['TransectionTime'] = this.transectionTime;
    data['Description'] = this.description;
    return data;
  }
}
