import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hadithe/Features/adhan/data/datasource/remote_datasource.dart';
import 'package:hadithe/Features/adhan/data/repository/repository.dart';
import 'package:hadithe/Features/adhan/domain/repository/get_adhan_repository.dart';
import 'package:hadithe/Features/adhan/domain/usecase/get_adhan_usecase.dart';
import 'package:hadithe/Features/adhan/peresentation/cubit/adhan_cubit.dart';
import 'package:hadithe/Features/adhkar/data/datasource/local_data_source.dart';
import 'package:hadithe/Features/adhkar/data/repository/get_repo_impl.dart';
import 'package:hadithe/Features/adhkar/domain/repository/get_adhkar_repository.dart';
import 'package:hadithe/Features/adhkar/domain/usecase/get_adhkar_usecase.dart';
import 'package:hadithe/Features/adhkar/peresentation/cubit/get_adhkar_cubit.dart';
import 'package:hadithe/Features/hadithe/data/datasource/remote_datasource.dart';
import 'package:hadithe/Features/hadithe/data/repository/repository_impl.dart';
import 'package:hadithe/Features/hadithe/domain/repository/get_topic_repository.dart';
import 'package:hadithe/Features/hadithe/domain/usecase/get_topic_usecase.dart';
import 'package:hadithe/Features/hadithe/peresentation/cubit/each_topic_data_cubit.dart';
import 'package:hadithe/Features/hadithe/peresentation/cubit/get_topics_cubit.dart';
import 'package:hadithe/Features/prophetstories/data/datasource/local_data_source.dart';
import 'package:hadithe/Features/prophetstories/data/repository/repository_impl.dart';
import 'package:hadithe/Features/prophetstories/domain/repository/prophet_repository.dart';
import 'package:hadithe/Features/prophetstories/domain/usecase/prophet_usecase.dart';
import 'package:hadithe/Features/prophetstories/presentation/cubit/get_prophet_stories_cubit.dart';
import 'package:hadithe/core/api/api_helper.dart';
import 'package:just_audio/just_audio.dart';

final sl = GetIt.instance;
Future<void> init() async {
  //! Features
  //bloc
  sl.registerFactory<GetTopicsCubit>(
      () => GetTopicsCubit(getTopicUsecase: sl()));
  //use case
  sl.registerLazySingleton<GetTopicUsecase>(
      () => GetTopicUsecase(getTopicRepository: sl()));
  // repository
  sl.registerLazySingleton<GetTopicRepository>(
      () => GetTopicRepositortImpl(remoteDataSource: sl()));
  //data source
  sl.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(apiHelper: sl()));
  //! hadethi data
  //cubit
  sl.registerFactory(() => EachTopicDataCubit(getEachTopicDataUsecase: sl()));
  //use case
  sl.registerLazySingleton<GetEachTopicDataUsecase>(() => sl());
  //!Adhkar
  //cubit
  sl.registerFactory<GetAdhkarCubit>(() => GetAdhkarCubit(
        getAdhkarUseCase: sl(),
        getAdhkarUseCase2: sl(),
        player: sl(),
        assetsAudioPlayer: sl(),
      ));
  //use case
  sl.registerLazySingleton<GetAdhkarUseCase>(
      () => GetAdhkarUseCase(getAdhkarRepository: sl()));
  sl.registerLazySingleton<GetAdhkarUseCase2>(
      () => GetAdhkarUseCase2(getAdhkarRepository: sl()));
  //repository
  sl.registerLazySingleton<GetAdhkarRepository>(
      () => GetAdhkarRepositoryImpl(localDataSource: sl()));
  //datasource
  sl.registerLazySingleton<LocalDataSource>(() => LocalDataSourceImpl());
  //!Adhan
  //cubit
  sl.registerFactory<AdhanCubit>(() => AdhanCubit(adhanUseCase: sl()));
  //use case
  sl.registerLazySingleton<GetAdhanUseCase>(
      () => GetAdhanUseCase(getAdhanRepository: sl()));
  //repositort
  sl.registerLazySingleton<GetAdhanRepository>(
      () => GetAdhanRepositoryImpl(adhanRemoteDataSource: sl()));
  //rmote data source
  sl.registerLazySingleton<AdhanRemoteDataSource>(
      () => AdhanRemoteDataSourceImpl(apiHelper: sl()));
  //!Prophet Stories
  //cubit
  sl.registerFactory(() => GetProphetStoriesCubit(prophetUseCase: sl()));
  //usecase
  sl.registerLazySingleton(() => ProphetUseCase(prophetRepository: sl()));
  //repositor
  sl.registerLazySingleton<ProphetRepository>(() =>ProphetRepositoryImpl(localDatSourceOImpl: sl()) );
  //data source
  sl.registerLazySingleton<ProphetLocalDataSource>(() =>ProphetLocalDataSourceImpl() );
  //dio
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => ApiHelper(sl()));
  //audio
  sl.registerLazySingleton(() => AudioPlayer());
  sl.registerLazySingleton(() => AssetsAudioPlayer());
}
