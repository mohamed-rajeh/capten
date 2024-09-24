class Order {
  final int id;
  final String name;
  final String cNumber;
  final String rName;

  final double total;
  final String state;
  final DateTime date;

  Order(this.id, this.total, this.rName, this.cNumber,
      {required this.name, required this.state, required this.date});
}
