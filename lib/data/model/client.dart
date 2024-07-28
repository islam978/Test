class Client {
  int ? clientId;
  String ?clientName;
  String ?clientImage;
  String ?clientDate;
  int ?clientBalance;
  int ?transactionId;
  String? transactionType;
  int ?transactionUser;
  String? transactionDate;

  Client(
      {this.clientId,
        this.clientName,
        this.clientImage,
        this.clientDate,
        this.clientBalance,
        this.transactionId,
        this.transactionType,
        this.transactionUser,
        this.transactionDate});

  Client.fromJson(Map<String, dynamic> json) {
    clientId = json['client_id'];
    clientName = json['client_name'];
    clientImage = json['client_image'];
    clientDate = json['client_date'];
    clientBalance = json['client_balance'];
    transactionId = json['transaction_id'];
    transactionType = json['transaction_type'];
    transactionUser = json['transaction_user'];
    transactionDate = json['transaction_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['client_id'] = this.clientId;
    data['client_name'] = this.clientName;
    data['client_image'] = this.clientImage;
    data['client_date'] = this.clientDate;
    data['client_balance'] = this.clientBalance;
    data['transaction_id'] = this.transactionId;
    data['transaction_type'] = this.transactionType;
    data['transaction_user'] = this.transactionUser;
    data['transaction_date'] = this.transactionDate;
    return data;
  }
}
