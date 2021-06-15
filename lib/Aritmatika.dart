import 'package:flutter/material.dart';

import 'data_table.dart';

class Aritmatika extends StatefulWidget {
  @override
  _AritmatikaState createState() => _AritmatikaState();
}

class _AritmatikaState extends State<Aritmatika> {
  TextEditingController buku = TextEditingController();
  TextEditingController jumlah = TextEditingController();
  TextEditingController harga = TextEditingController();
  TextEditingController total = TextEditingController();
  bool isDiskon = false;

  Container buildTextField({String hint, TextInputType textInputType, TextEditingController textEditingController, bool read = false}) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Material(
        shadowColor: Colors.grey[100],
        elevation: 3,
        borderRadius: BorderRadius.circular(30),
        child: TextField(
          controller: textEditingController,
          keyboardType: textInputType,
          autofocus: false,
          maxLines: 1,
          readOnly: read,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.orange)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.white)),
            prefixIcon: Icon(
              Icons.double_arrow,
              color: Colors.orange,
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: hint,
          ),
        ),
      ),
    );
  }

  void perkalian(int jumlah, int harga) {
    if (jumlah != null && harga != null) {
      var hasil = jumlah * harga;
      if (hasil > 20000) {
        isDiskon = true;
      } else {
        isDiskon = false;
      }
      total.text = hasil.toString();  
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Daeng Mhd El Faritsi"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [
            buildTextField(
              hint: "Jumlah",
              textInputType: TextInputType.number,
              textEditingController: jumlah),
            buildTextField(
              hint: "Harga",
              textInputType: TextInputType.number,
              textEditingController: harga),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      perkalian(int.tryParse(jumlah.text), int.tryParse(harga.text));
                    });
                  },
                  child: Text("HITUNG", style: TextStyle(fontSize: 17),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    padding: EdgeInsets.all(15),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                ),
              ),
            ),
            buildTextField(
              hint: "Total bayar",
              textInputType: TextInputType.number,
              textEditingController: total,
              read: true),
            (isDiskon)
              ? Text(
                  "Selamat! Anda mendapatkan piring cantik",
                  style: TextStyle(color: Colors.red),
                )
              : Container(),
            Container(
              margin: EdgeInsets.only(top: 100),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DataTabel()));
                  },
                  child: Text("BERIKUTNYA", style: TextStyle(fontSize: 17),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    padding: EdgeInsets.all(15),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
