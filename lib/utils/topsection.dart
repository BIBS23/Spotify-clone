import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [

        Row(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
          
            Text("Good evening",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                  Icon(Icons.notifications_none_outlined),
                  Icon(Icons.history_sharp),
                  Icon(Icons.settings),
                ],
              ),   
          const SizedBox(height: 25),
          Row(
            children: [
              const SizedBox(width: 15),
              Container(
                height: 35,
                width: 70,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.grey.shade800),
                child: const Center(child: Text("Music")),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 35,
                width: 140,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.grey.shade800),
                child: const Center(child: Text("Podcasts & Shows")),
              ),
            ],
          )
      ]);
  }
}