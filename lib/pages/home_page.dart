// ignore_for_file: sort_child_properties_last, prefer_collection_literals

import 'package:flutter/material.dart';
import 'package:namaz_vakti/models/namazVakit.dart';
import 'package:namaz_vakti/service/api_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var now = DateTime.now();
  UserService service = UserService();
  NamazPlace? place;
  NamazTimes? times;
  Future<Namaz?>? future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    service.getVakit().then((value) {
      if (value != null) {
        setState(() {
          place = value.place;
          times = value.times;
          future = service.getVakit();
        });
      }
    });
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 40,
            left: 40,
            top: 80,
            bottom: 20,
          ),
          child: _containerOlustur(
              zaman(
                Center(
                    child: FutureBuilder(
                  future: future,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(now.toString());
                    } else if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }

                    return CircularProgressIndicator();
                  },
                )),
              ),
              40,
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
              zaman(Center(child: Text(place?.city ?? ""))), 40, 400),
        ),
        _containerOlustur(
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                zaman(_vakitNamaz(
                    "İmsak      ", times?.the20230215![0].toString() ?? "")),
                zaman(_vakitNamaz(
                    "Güneş      ", times?.the20230215![1].toString() ?? "")),
                zaman(
                  _vakitNamaz("Öğle", times?.the20230215![2].toString() ?? ""),
                ),
                zaman(_vakitNamaz(
                    "İkindi       ", times?.the20230215![3].toString() ?? "")),
                zaman(
                  _vakitNamaz(
                      "Akşam     ", times?.the20230215![4].toString() ?? ""),
                ),
                zaman(
                  _vakitNamaz("Yatsı", times?.the20230215![5].toString() ?? ""),
                ),
                /*zaman(
                  _vakitNamaz(
                      "Akşam      ", times?.the20231029![0].toString() ?? ""),
                ),
                zaman(
                  _vakitNamaz("Yatsı      ", ""),
                ),*/
              ],
            ),
            40,
            400),
      ],
    );
  }

  _containerOlustur(Widget child, double uzunluk, double genislik) {
    return Expanded(
      child: Container(
        height: uzunluk,
        width: genislik,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 231, 158, 158),
            border: Border.all(width: 4, color: Colors.white),
            borderRadius: BorderRadius.circular(30)),
        child: child,
      ),
    );
  }

  _vakitNamaz(String vakit, String zaman) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(vakit),
        Text(zaman),
      ],
    );
  }

  zaman(Widget vakitler) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 5, right: 40, left: 40, bottom: 10),
        child: Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 105, 147, 182),
                borderRadius: BorderRadius.circular(18)),
            child: vakitler,
          ),
        ),
      ),
    );
  }
}
/*
vakit?.MiladiTarihKisa == null
                      ? CircularProgressIndicator()
                      : (Text(vakit?.MiladiTarihKisa.toString() ?? "Na"))
 */
