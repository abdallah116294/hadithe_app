import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:hadithe/Features/adhkar/peresentation/screen/adhkar_screen.dart';
import 'package:hadithe/Features/hadithe/peresentation/screens/headth_screen.dart';
import 'package:hadithe/Features/prophetstories/presentation/screens/prophet_list_screen.dart';
import 'package:lottie/lottie.dart';
=======
import 'package:hadithe/Features/adhan/peresentation/screen/adhan_screen.dart';
import 'package:hadithe/Features/adhkar/peresentation/screen/adhkar_screen.dart';
import 'package:hadithe/Features/home/perenstation/widgetss/adahen_grid_widget.dart';
import 'package:hadithe/Features/home/perenstation/widgetss/headth_grid_widget.dart';

import '../../../hadithe/peresentation/screens/headth_screen.dart';
>>>>>>> 864c82fcb9042112f7757c92715e29adb72d7ab5

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
<<<<<<< HEAD
        backgroundColor: const Color(0xFF230E4E),
        title: const Text(
          'الشاشة الرئيسية',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: buildMainScreen(context),
    );
  }
}

Widget buildMainScreen(BuildContext context) {
  return Container(
    color: Colors.white,
    child: Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Expanded(
                  child: _buildCard(
                      context,
                      const Color(0xFFE57373),
                      const Color(0xFFFFCDD2),
                      'assets/animation/p]de.json',
                      'الأحاديث النبوية',
                      '/conversation_screen', () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Directionality(
                                textDirection: TextDirection.rtl,
                                child: const HeadthScreen())));
                  }),
                ),
              ),
              const SizedBox(width: 16), // مسافة بين البطاقات
              Padding(
                padding: const EdgeInsets.all(5),
                child: Expanded(
                  child: _buildCard(
                      context,
                      const Color(0xFF81C784),
                      const Color(0xFFC8E6C9),
                      'assets/animation/store.json',
                      'قصص الأنبياء',
                      '/stories_screen', () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Directionality(textDirection: TextDirection.rtl,child: const ProphetScreenList())));
                  }),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16), // مسافة بين الصفوف
        Expanded(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Expanded(
                  child: _buildCard(
                      context,
                      const Color(0xFF64B5F6),
                      const Color(0xFFBBDEFB),
                      'assets/animation/read.json',
                      'دروس تعليمية',
                      '/tutorials_screen',
                      () {}),
                ),
              ),
              const SizedBox(width: 16), // مسافة بين البطاقات
              Padding(
                padding: const EdgeInsets.all(5),
                child: Expanded(
                  child: _buildCard(
                      context,
                      const Color(0xFFFFD54F),
                      const Color(0xFFFFF9C4),
                      'assets/animation/ee.json',
                      'الأذكار الاسلامية',
                      '/remembrance_screen', () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Directionality(
                                textDirection: TextDirection.rtl,
                                child: const AdhkarsScreen())));
                  }),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildCard(
    BuildContext context,
    Color borderColor,
    Color bgColor,
    String animationPath,
    String cardTitle,
    String routeName,
    VoidCallback onPresed) {
  return GestureDetector(
    onTap: () {
      onPresed();
    },
    child: Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 2),
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),
      child: Column(
        children: <Widget>[
          Lottie.asset(animationPath, width: 150, height: 150),
          const SizedBox(height: 10),
          Text(cardTitle,
              style:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ],
      ),
    ),
  );
}
=======
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
>>>>>>> 864c82fcb9042112f7757c92715e29adb72d7ab5
