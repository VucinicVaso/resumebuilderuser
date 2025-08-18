import 'package:wtoolboxweb/clean_architecture/repository/wtw_repository.dart';
import '../../entity/account/account.dart';

abstract class AccountRepository extends WTWRepository<Account> {

  Account? account;

  // login
  Future<bool>? singIn({ String? username, String? password });

  // register
  Future<bool>? signUp({ String? username, String? password });

  // logout
  Future<bool>? signOut();

}