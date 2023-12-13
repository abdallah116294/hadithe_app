import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadithe/Features/adhan/peresentation/cubit/adhan_cubit.dart';
import 'package:hadithe/injection_container.dart' as di;

class AdhanScreen extends StatefulWidget {
  const AdhanScreen({super.key});

  @override
  State<AdhanScreen> createState() => _AdhanScreenState();
}

class _AdhanScreenState extends State<AdhanScreen> {
  @override
<<<<<<< HEAD
  void initState() {
    // TODO: implement initState
    di.sl<AdhanCubit>().getAdhanTimes();
    super.initState();
  }

  @override
=======
>>>>>>> 864c82fcb9042112f7757c92715e29adb72d7ab5
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => di.sl<AdhanCubit>()..getAdhanTimes(),
        child: BlocBuilder<AdhanCubit, AdhanState>(builder: (context, state) {
          if (state is AdhanIsloading) {
            return const Center(
              child: Text("Is loading State "),
            );
          } else if (state is AdhanLoaded) {
            return Text(state.timingsResponse.times!.first.fajr.toString());
<<<<<<< HEAD
          } else if (state is AdhanError) {
            return Center(
              child: Text(state.error.toString()),
            );
=======
          }else if(state is AdhanError){
            return  Center(
            child: Text(state.error.toString()),
          );
>>>>>>> 864c82fcb9042112f7757c92715e29adb72d7ab5
          }
          return const Center(
            child: Text(""),
          );
        }),
      ),
    );
  }
}
