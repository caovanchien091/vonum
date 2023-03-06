import 'package:common/common.dart';
import 'package:source/domain/domain.dart';

abstract class AuthRepository {
  SessionEntity readSession();

  Future<bool> writeSession(SessionEntity session);

  Future<NetworkResponse<SessionEntity>> logout();

  Future<NetworkResponse<SessionEntity>> nonLogin();

  Future<NetworkResponse<SessionEntity>> login({
    AccountParam? param,
  });
}
