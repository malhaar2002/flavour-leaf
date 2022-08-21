class OrderModel {
  int id;
  String name;
  int noItems;
  double price;
  String status;
  String date;

  OrderModel({
    required this.id,
    required this.name,
    required this.noItems,
    required this.price,
    required this.status,
    required this.date,
  });

  static List<OrderModel> ordersList = [
    // OrderModel(
    //   id: 5,
    //   name: 'Cold Coffee',
    //   noItems: 3,
    //   price: 120,
    //   status: 'In Progress',
    //   date: '21 Aug 2022 at 8:03 pm',
    // ),
    // OrderModel(
    //   id: 1,
    //   name: 'Pizza',
    //   noItems: 1,
    //   price: 200,
    //   status: 'Completed',
    //   date: '18 Aug 2022 at 6:15 pm',
    // ),
    // OrderModel(
    //   id: 3,
    //   name: 'Burger',
    //   noItems: 1,
    //   price: 200,
    //   status: 'Completed',
    //   date: '15 Aug 2022 at 4:15 pm',
    // ),
  ];
}
