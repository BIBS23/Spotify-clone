import 'package:flutter/material.dart';
import 'package:spotify/utils/showcard.dart';
import 'package:spotify/utils/details.dart';
import 'package:spotify/utils/topsection.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            const SizedBox(height: 30),
            const TopSection(), // Top icons and music ,  podcast button
            const Padding(
              padding: EdgeInsets.only(top: 30, left: 20),
              child: Text(
                "Recently Played",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 20),
                Column(children: [
                  Container(
                    height: 120,
                    width: 130,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("lib/assets/recentplay.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(height: 10),
                  const Text('HipHop Tamizha',style: TextStyle(fontWeight: FontWeight.bold),)
                ]),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text('Best episodes Of the week',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: showname.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ShowCard(
                        songimg: showimg[index],
                        songname: showname[index]));
                  }),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 10,bottom: 10),
              child: Text('Made For Bibin Jose',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ShowCard(songimg: 'lib/assets/mix1.jpg', songname: 'Ar Rahman'),
                ShowCard(songimg: 'lib/assets/mix2.jpg' , songname: 'Yuvan Hits')
              ],
            )

          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                  Icons.home_filled,
                ),
                label: 'Home'
              ),
              BottomNavigationBarItem(

                icon: Icon(
                   Icons.search,
                  ),
                  label: 'Search'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_music_outlined),
                label: 'My Library'
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                  Icons.music_note_outlined,
                ),
                label: 'Premium'
              ),
            ]
        ),
      ),
    );
  }
}
