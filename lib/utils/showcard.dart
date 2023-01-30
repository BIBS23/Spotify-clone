import 'package:flutter/material.dart';

class ShowCard extends StatelessWidget {
  final String songname;
  final String songimg;
  const ShowCard({super.key,
  required this.songimg,
  required this.songname
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(songimg), fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(songname,style: const TextStyle(fontWeight: FontWeight.bold),),
        )
      ],
    );
  }
}
