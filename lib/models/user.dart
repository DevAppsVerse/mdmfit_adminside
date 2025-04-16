import 'membership.dart';
import 'payment_statistics.dart';
import 'subscription.dart';
import 'transaction.dart';
import 'verification.dart';

class User {
  String id;
  String name;
  String email;
  String phone;
  String address;
  bool isActive;
  Membership membership;
  List<Transaction> transactions;
  List<Subscription> subscriptions;
  PaymentStatistics paymentStats;
  TwoNDetails twoNDetails;

  User({required this.id, required this.name, required this.email, required this.phone,
    required this.address, required this.isActive, required this.membership,
    required this.transactions, required this.subscriptions, required this.paymentStats,
    required this.twoNDetails});
}
