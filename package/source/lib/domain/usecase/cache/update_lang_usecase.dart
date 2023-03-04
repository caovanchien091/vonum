import 'package:source/domain/domain.dart';

class UpdateLangUsecase {
  final CacheRepository _repo;

  const UpdateLangUsecase(this._repo);

  Future<bool> call(String langCode) {
    return _repo.writeLang(langCode);
  }
}
