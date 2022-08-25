import 'package:cloud_firestore/cloud_firestore.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

String formatTimestamp(Timestamp timestamp) {
  DateTime date = timestamp.toDate();
  return DateFormat.yMMMd().add_jm().format(date);
}
