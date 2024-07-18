import 'package:get_it/get_it.dart';
import 'package:movies_app/core/cache/cache_helper.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //* CacheHelper
  getIt.registerFactory<CacheHelper>(() => CacheHelper());

  // FirebaseAuth auth = FirebaseAuth.instance;

  // FirebaseFirestore firestore = FirebaseFirestore.instance;

  // getIt.registerLazySingleton<AuthService>(() => AuthService(auth));

  // getIt.registerLazySingleton<FirestoreService>(
  //     () => FirestoreService(firestore));

  // getIt.registerLazySingleton<AuthRepository>(
  //     () => AuthRepository(AuthService(auth), FirestoreService(firestore)));

  // getIt.registerLazySingleton<AuthCubit>(() => AuthCubit(getIt()));
}
