import 'package:sqflite/sqflite.dart';

/// BEGIN INSERTCUSTOMER
Future performInsertCustomer(
  Database database, {
  String? name,
  String? address,
  String? city,
}) {
  final query = '''
insert into customer(name, address, city) values ('$name','$address','$city');
''';
  return database.rawQuery(query);
}

/// END INSERTCUSTOMER

/// BEGIN UPDATECUSTOMER
Future performUpdateCustomer(
  Database database, {
  String? name,
  String? address,
  String? city,
  int? id,
}) {
  final query = '''
update customer set name='$name', address='$address',city='$city' where id=$id;
''';
  return database.rawQuery(query);
}

/// END UPDATECUSTOMER

/// BEGIN DELETECUSTOMER
Future performDeleteCustomer(
  Database database, {
  int? id,
}) {
  final query = '''
delete from customer where id=$id
''';
  return database.rawQuery(query);
}

/// END DELETECUSTOMER
