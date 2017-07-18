import 'package:jaguar/jaguar.dart';
import 'package:recaptcha/server/api/api.dart';
import 'package:jaguar_dev_proxy/jaguar_dev_proxy.dart';

main() async {
  final server = new Jaguar(port: 80);
  server.addApiReflected(new Routes());
  server.addApi(new PrefixedProxyServer('', 'http://localhost:8082'));
  await server.serve();
}