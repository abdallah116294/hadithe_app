import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadithe/Features/hadithe/peresentation/screens/topic_data.dart';
import 'package:hadithe/Features/hadithe/peresentation/widgets/topic_widget.dart';
import 'package:hadithe/Features/prophetstories/presentation/cubit/get_prophet_stories_cubit.dart';
import 'package:hadithe/Features/prophetstories/presentation/screens/prophet_story.dart';
import 'package:hadithe/injection_container.dart' as di;

class ProphetScreenList extends StatefulWidget {
  const ProphetScreenList({super.key});

  @override
  State<ProphetScreenList> createState() => _ProphetScreenListState();
}

class _ProphetScreenListState extends State<ProphetScreenList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Center(child: Text("قصص الانبياء")),
        backgroundColor:const Color(0xFF230E4E),
        elevation: 0.0,
       ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocProvider(
          create: (context) =>
              di.sl<GetProphetStoriesCubit>()..getProphetStories(),
          child: BlocBuilder<GetProphetStoriesCubit, GetProphetStoriesState>(
              builder: (context, state) {
            if (state is GetProphetStoriesLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is GetProphetStoriesLoadedState) {
              return ListView.separated(
                  itemBuilder: (context, index) {
                    return TopicWidget(
                      title: state.prophetStories[index].prophet_name,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProphetStroy(index: index,prophet_name: state.prophetStories[index].prophet_name,)));
                      },
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: state.prophetStories.length);
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
        ),
      ),
    );
  }
}
