class Account {
  String token;

  Account({this.token});

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(token: json["token"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    return data;
  }

  @override
  String toString() {
    return 'Account{token: $token}';
  }
}
