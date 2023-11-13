import 'package:flutter/material.dart';
import 'package:hadithe/Features/adhkar/peresentation/cubit/get_adhkar_cubit.dart';

class AdhkarDetialsWidget extends StatefulWidget {
  AdhkarDetialsWidget(
      {super.key,
      required this.text,
      required this.count,
      required this.onPressed1,
      required this.onPressed2,
      required this.audoi});
  String text;
  int count;
  String audoi;
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;

  @override
  State<AdhkarDetialsWidget> createState() => _AdhkarDetialsWidgetState();
}

class _AdhkarDetialsWidgetState extends State<AdhkarDetialsWidget> {
  int index=0;
  bool isPlay = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 327,
            height: 47,
            decoration: ShapeDecoration(
                color: const Color(0x0C121931),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: widget.onPressed1,
                      icon: const Icon(Icons.share)),
                  IconButton(
                      onPressed: widget.onPressed2,
                      icon: const Icon(Icons.copy)),
                  Container(
                    width: 42,
                    height: 42,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF230E4E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.50),
                      ),
                    ),
                    child: Center(
                        child: TextButton(
                      child: isPlay
                          ? const Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            )
                          : const Icon(
                              Icons.pause,
                              color: Colors.white,
                            ),
                      onPressed: () {
                        if (isPlay) {
                          GetAdhkarCubit.get(context)
                              .playAssetsAudio(path: widget.audoi);
                          setState(() {
                            isPlay = false;
                          });
                        } else {
                          GetAdhkarCubit.get(context).pauseAssetsAudio();
                          setState(() {
                            isPlay = true;
                          });
                        }
                      },
                    )),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            widget.text,
            style: const TextStyle(
              color: Color(0xFF230E4E),
              fontSize: 18,
              fontFamily: 'Amiri',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF230E4E)),
                  onPressed: () {
                    if (index < widget.count) {
                      setState(() {
                        index++;
                      });
                    }
                  },
                  child: const Text("+",
                      style: TextStyle(color: Colors.white, fontSize: 22))),
              Container(
                width: 42,
                height: 42,
                decoration: ShapeDecoration(
                  color: const Color(0xFF230E4E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.50),
                  ),
                ),
                child: Center(
                  child: Text(
                    index > 0 ? index.toString() : widget.count.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF230E4E)),
                  onPressed: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: const Text(
                    "-",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
