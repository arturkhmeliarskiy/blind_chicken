import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:get_it/get_it.dart';
import 'package:blind_chicken/old_repos/repositories/repositories.dart';
import 'package:blind_chicken/old_repos/services/services.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';

Future<void> setupIoc() async {
  final getIt = GetIt.I;
  await initShared(getIt);
  await initServices(getIt);
  await initRepositories(getIt);
  await initBloc(getIt);
}
