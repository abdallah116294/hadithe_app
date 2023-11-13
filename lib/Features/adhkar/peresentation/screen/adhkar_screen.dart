import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadithe/Features/adhkar/peresentation/cubit/get_adhkar_cubit.dart';
import 'package:hadithe/Features/adhkar/peresentation/cubit/get_adhkar_state.dart';
import 'package:hadithe/Features/adhkar/peresentation/screen/adhkar_details_screen.dart';
import 'package:hadithe/Features/hadithe/peresentation/widgets/topic_widget.dart';
import 'package:hadithe/injection_container.dart' as di;

class AdhkarsScreen extends StatefulWidget {
  const AdhkarsScreen({super.key});

  @override
  State<AdhkarsScreen> createState() => _AdhkarsScreenState();
}

class _AdhkarsScreenState extends State<AdhkarsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => di.sl<GetAdhkarCubit>()..getAdhkar2(),
        child: BlocBuilder<GetAdhkarCubit, GetAdhkarState>(
            builder: (context, state) {
          if (state is GetAdhkarStateIsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is GetAdhkarStateLoaded) {
            return ListView.separated(
                separatorBuilder: (context, index) => const Divider(),
                itemCount: state.adhkar.length,
                itemBuilder: (context, index) {
                  return TopicWidget(
                    title: state.adhkar[index].category.toString(),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AdhkarDetailsScreen(
                                // text: state.adhkar[index].array[index].text,
                                // count: state.adhkar[index].array[index].count,
                                onPressed1: () {},
                                onPressed2: () {},
                                array: state.adhkar[index].array,
                                //length: state.adhkar[index].array.length,
                              )));
                    },
                  );
                });
          } else if (state is GetAdhkarStateError) {
            return Center(child: Text(state.error));
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        }),
      ),
    );
  }
}
