import 'package:flutter/material.dart';
import 'package:hadithe/Features/adhan/peresentation/screen/adhan_screen.dart';
import 'package:hadithe/Features/adhkar/peresentation/screen/adhkar_screen.dart';
import 'package:hadithe/Features/home/perenstation/widgetss/adahen_grid_widget.dart';
import 'package:hadithe/Features/home/perenstation/widgetss/headth_grid_widget.dart';

import '../../../hadithe/peresentation/screens/headth_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset(
            "assets/images/icon.png",
            height: 50,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Directionality(
                            textDirection: TextDirection.rtl,
                            child:  HeadthScreen())));
                  },
                  child: const HeadthGridWidget()),
              InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context)=>const Directionality(textDirection: TextDirection.rtl, child: AdhkarsScreen())));
                  },
                  child: const AdahnGrideWidget())
            ],
          ),

           InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context)=>const Directionality(textDirection: TextDirection.rtl, child: AdhanScreen())));
                  },
                  child: const AdahnGrideWidget())
        ],
      ),
    );
  }
}
