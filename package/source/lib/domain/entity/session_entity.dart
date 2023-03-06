import 'package:common/common.dart';
import 'package:source/domain/domain.dart';

const _login = 'login';
const _nonLogin = 'non_login';

abstract class SessionEntity {
  final String? tokenType;

  const SessionEntity({
    this.tokenType,
  });

  Map<String, dynamic> toMap();

  TResult when<TResult>({
    required Function(SessionLoginEntity entity) login,
    required Function(SessionNonLoginEntity entity) nonLogin,
  }) {
    if (this is SessionLoginEntity) {
      return login(this as SessionLoginEntity);
    } else {
      return nonLogin(this as SessionNonLoginEntity);
    }
  }

  factory SessionEntity.fromMap(Map<String, dynamic> map) {
    if (map['tokenType'] == _nonLogin) {
      return SessionNonLoginEntity.fromMap(map);
    } else {
      return SessionLoginEntity.fromMap(map);
    }
  }
}

class SessionLoginEntity extends SessionEntity {
  final String? refreshToken;
  final String? accessToken;
  final String? expiresIn;
  final String? accountType;
  final String? accountEnable;
  final bool? isOpt;

  const SessionLoginEntity({
    this.refreshToken,
    this.accessToken,
    this.expiresIn,
    this.accountType,
    this.accountEnable,
    this.isOpt,
    String? tokenType,
  }) : super(tokenType: tokenType);

  @override
  Map<String, dynamic> toMap() {
    return {
      'refreshToken': refreshToken,
      'accessToken': accessToken,
      'tokenType': tokenType,
      'expiresIn': expiresIn,
      'accountType': accountType,
      'accountEnable': accountEnable,
      'isOpt': isOpt,
    };
  }

  factory SessionLoginEntity.fromMap(Map<String, dynamic> map) {
    return SessionLoginEntity(
      refreshToken: map['refreshToken'] as String?,
      accessToken: map['accessToken'] as String?,
      expiresIn: map['expiresIn'] as String?,
      accountType: map['accountType'] as String?,
      accountEnable: map['accountEnable'] as String?,
      tokenType: map['tokenType'] as String?,
      isOpt: map['isOpt'] as bool?,
    );
  }
}

class SessionNonLoginEntity extends SessionEntity {
  final String? refreshToken;
  final String? accessToken;
  final String? expiresIn;

  const SessionNonLoginEntity({
    this.refreshToken,
    this.accessToken,
    this.expiresIn,
    String? tokenType,
  }) : super(tokenType: tokenType);

  @override
  Map<String, dynamic> toMap() {
    return {
      'refreshToken': refreshToken,
      'accessToken': accessToken,
      'tokenType': tokenType,
      'expiresIn': expiresIn,
    };
  }

  factory SessionNonLoginEntity.fromMap(Map<String, dynamic> map) {
    return SessionNonLoginEntity(
      refreshToken: map['refreshToken'] as String?,
      accessToken: map['accessToken'] as String?,
      tokenType: map['tokenType'] as String?,
      expiresIn: map['expiresIn'] as String?,
    );
  }
}
