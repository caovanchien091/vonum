import 'package:common/common.dart';
import 'package:source/data/data.dart';
import 'package:source/domain/domain.dart';

class AuthRepositoryImp extends AuthRepository {
  final AuthService _remote;
  final AuthCacheService _cache;

  AuthRepositoryImp(this._remote, this._cache);

  @override
  SessionEntity readSession() {
    return SessionEntity.fromMap(
      _cache.readSession().toMap(),
    );
  }

  @override
  Future<bool> writeSession(SessionEntity session) {
    return _cache.saveSession(
      SessionModel.fromMap(
        session.toMap(),
      ),
    );
  }

  @override
  Future<NetworkResponse<SessionEntity>> login({
    AccountParam? param,
  }) async {
    return runNetworkGuarded(
      run: () => _remote.login(param: param),
      transform: (value) => SessionEntity.fromMap(
        value.toMap(),
      ),
    );
  }

  @override
  Future<NetworkResponse<SessionEntity>> logout() async {
    return runNetworkGuarded(
      run: () => _remote.logout(),
      transform: (value) => SessionEntity.fromMap(
        value.toMap(),
      ),
    );
  }

  @override
  Future<NetworkResponse<SessionEntity>> nonLogin() {
    return runNetworkGuarded(
      run: () => _remote.nonLogin(),
      transform: (value) => SessionEntity.fromMap(
        value.toMap(),
      ),
    );
  }
}
