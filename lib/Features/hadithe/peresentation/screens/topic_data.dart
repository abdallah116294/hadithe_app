import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadithe/Features/hadithe/peresentation/cubit/each_topic_data_cubit.dart';
import 'package:hadithe/Features/hadithe/peresentation/widgets/topic_widget.dart';
import 'package:hadithe/injection_container.dart'as di;

class TopicData extends StatefulWidget {
   TopicData({super.key,required this.topicID});
  int topicID;
  @override
  State<TopicData> createState() => _TopicDataState();
}

class _TopicDataState extends State<TopicData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(create:(context)=>di.sl<EachTopicDataCubit>()..getEachTopicData(widget.topicID) ,child: BlocBuilder<EachTopicDataCubit, EachTopicDataState>(
          builder: (context, state) {
        if (state is EachTopicDataIsLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is EachTopicDataLoadeedState) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return TopicWidget(
                title: state.eachTopicData.data![index].title.toString(),
                onPressed: () {},
              );
            },
            itemCount: state.eachTopicData.data!.length,
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      ),)
    );
  }
}
