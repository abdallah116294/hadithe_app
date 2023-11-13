import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadithe/Features/hadithe/peresentation/cubit/get_topics_cubit.dart';
import 'package:hadithe/Features/hadithe/peresentation/screens/topic_data.dart';
import 'package:hadithe/core/utiles/colors_manager.dart';
import '../widgets/topic_widget.dart';
import 'package:hadithe/injection_container.dart' as di;

class HeadthScreen extends StatefulWidget {
  const HeadthScreen({super.key});

  @override
  State<HeadthScreen> createState() => _HeadthScreenState();
}

class _HeadthScreenState extends State<HeadthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => di.sl<GetTopicsCubit>()..getTopics(),
        child: BlocBuilder<GetTopicsCubit, GetTopicsState>(
            builder: (context, state) {
          if (state is GetTopicsStateIsloading) {
            return Center(
              child:
                  CircularProgressIndicator(color: ColorManager.textMainColor),
            );
          } else if (state is GetTopicsStateLoaded) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return TopicWidget(
                      title: state.topicsList[index].title.toString(),
                      onPressed: () {
                        //int id = state.topicsList[index].id;
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TopicData(
                                  topicID: index+1,
                                )));
                      },
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: state.topicsList.length),
            );
          } else if (state is GetTopicsStateError) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        }),
      ),
    );
  }
}
