import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadithe/Features/adhan/peresentation/cubit/adhan_cubit.dart';
import 'package:hadithe/Features/adhkar/peresentation/cubit/get_adhkar_cubit.dart';
import 'package:hadithe/Features/hadithe/peresentation/cubit/each_topic_data_cubit.dart';
import 'package:hadithe/Features/hadithe/peresentation/cubit/get_topics_cubit.dart';
import 'package:hadithe/Features/prophetstories/presentation/cubit/get_prophet_stories_cubit.dart';
import 'package:hadithe/Features/splash_screen.dart';

import 'Features/home/perenstation/screen/home_screen.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=>di.sl<GetTopicsCubit>()),
        BlocProvider(create: (_)=>di.sl<GetAdhkarCubit>()..getAdhkar2()
        ),
        BlocProvider(create: (context)=>di.sl<EachTopicDataCubit>()),
        BlocProvider(create: (context)=>di.sl<AdhanCubit>()..getAdhanTimes()
        ),
        BlocProvider(create: (context)=>di.sl<GetProphetStoriesCubit>()..getProphetStories())
        ],
      child: const MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          home: SplashScreen()),
    );
  }
}
