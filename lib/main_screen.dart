import 'package:flutter/material.dart';
import 'home_page.dart';
import 'tourism_place.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Wisata Turis"),
      ),
      body:
      ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              {
                return HomePage(place: place);
              }));
            },
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10,),
            child: Card (
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.lightBlue.shade700,
                ),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Center(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Image.network(place.imageUrls[0], width: 300,),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(place.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                  const SizedBox(
                    height: 3,
                  ),

                  Text(place.ticketPrice,
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15, color: Colors.red,
                    ),),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            ),
            ),
            )
          );
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }
}