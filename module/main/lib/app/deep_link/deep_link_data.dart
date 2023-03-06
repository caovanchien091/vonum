class DeepLinkData {
  final String link;
  final bool isStartApp;

  const DeepLinkData(this.link, this.isStartApp);

  Uri get uri => Uri.parse(link);

  String get host => uri.host;

  String get path => uri.path;

  String get scheme => uri.scheme;

  Map<String, String> get queryParameters => uri.queryParameters;
}
