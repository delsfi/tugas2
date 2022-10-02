import 'dart:ui';

import 'package:flutter/material.dart';
import 'tourism_place.dart';

class HomePage extends StatefulWidget {
  final TourismPlace place;

  const HomePage({Key? key, required this.place}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Wisata"),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        //child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                height: (MediaQuery
                    .of(context)
                    .size
                    .height) / 3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Image.network(widget.place.imageUrls[index]),
                    );
                  },
                  itemCount: widget.place.imageUrls.length,
                ),
              ),

              Text(
                "${widget.place.name}",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
              Text(
                "${widget.place.description}",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 24,),
              Text(
                "Harga  : ${widget.place.ticketPrice}",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, color: Colors.red),
              ),
              Text(
                "Lokasi : ${widget.place.location}",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "Open Days  : ${widget.place.openDays}",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "Open Time : ${widget.place.openTime}",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 15),
              ),

              SizedBox(height: 24,),

            ],
          ),
        ),
      )
      //),
    );
  }



  // Widget _buildForm() {
  //   return Column(
  //     children: [
  //       SizedBox(
  //         height: 12,
  //       ),
  //       _formInput(
  //           hint: "Masukkan Nama Lengkap",
  //           label: "Nama *",
  //           setStateInput: (value) {
  //             setState(() {
  //               _namaLengkap = value;
  //             });
  //           }),
  //       SizedBox(
  //         height: 12,
  //       ),
  //       _formInput(
  //           hint: "Masukkan Alamat Email",
  //           label: "Email *",
  //           setStateInput: (value) {
  //             setState(() {
  //               _email = value;
  //             });
  //           }),
  //       SizedBox(
  //         height: 12,
  //       ),
  //       _formInput(
  //           hint: "Masukkan No HP Aktif",
  //           label: "No HP *",
  //           setStateInput: (value) {
  //             setState(() {
  //               _noHP = value;
  //             });
  //           }),
  //       SizedBox(
  //         height: 12,
  //       ),
  //       _formInput(
  //         hint: "Masukkan Alamat Rumah",
  //         label: "Alamat Rumah *",
  //         setStateInput: (value) {
  //           setState(() {
  //             _alamat = value;
  //           });
  //         },
  //         maxLines: 3,
  //       ),
  //     ],
  //   );
  // }

//   Widget _buildButtonSubmit(){
//     return Container(
//       child: ElevatedButton(
//         onPressed: (){},
//         child: Text("Submit"),
//         style: ElevatedButton.styleFrom(
//             padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
//             textStyle: TextStyle(fontSize: 16)
//         ),
//       ),
//     );
//   }
}