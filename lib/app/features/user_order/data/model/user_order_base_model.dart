import 'package:ez_store/all_file/all_file.dart';

enum OrderStatus {
  pending,
  processing,
  shipping,
  delivered,
  canceled;


  final String translateKey = 'userOrder';
}