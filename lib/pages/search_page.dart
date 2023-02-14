import 'package:flutter/material.dart';

import 'package:namaz_vakti/sabitler/Sabitler.dart';

import 'package:http/http.dart' as http;

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 40,
            left: 40,
            top: 80,
            bottom: 20,
          ),
          child: _containerOlustur(Text("Ülke Seç"), 70, 400),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: 30,
            left: 40,
            right: 40,
            top: 0,
          ),
          child: _containerOlustur(
              Text(
                "Şehir Seç",
                style: Sabitler.getSeatchTextStyle(),
              ),
              70,
              400),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: 30,
            left: 40,
            right: 40,
            top: 0,
          ),
          child: _containerOlustur(
              Text(
                "İlçe Seç",
                style: Sabitler.getSeatchTextStyle(),
              ),
              70,
              400),
        ),
        Padding(
            padding: EdgeInsets.only(
              bottom: 30,
              left: 40,
              right: 40,
              top: 0,
            ),
            child: Expanded(
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red)),
                  )),
                  onPressed: () {},
                  child: Text("Git")),
            )),
      ],
    );
  }

  _containerOlustur(Widget child, double uzunluk, double genislik) {
    return Expanded(
      child: Container(
        height: uzunluk,
        width: genislik,
        decoration: BoxDecoration(
            color: Colors.purple.withOpacity(0.7),
            border: Border.all(width: 4, color: Colors.white),
            borderRadius: BorderRadius.circular(30)),
        child: Center(child: child),
      ),
    );
  }
}
/*
   DropdownButton(
                
                  items: ulkeler
                      .map((simdikiUlke) => DropdownMenuItem(
                            child: Text(simdikiUlke),
                            value: simdikiUlke,
                          ))
                      .toList(),
                  onChanged: (yeni) {
                    secilenUlke = yeni.toString();
                  }),
 */
