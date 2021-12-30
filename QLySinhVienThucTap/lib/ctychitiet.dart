import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/chitietsv.dart';
import 'package:flutter_bmi_calculator/fake_data.dart';
import 'package:flutter_bmi_calculator/models/SV.dart';
import 'package:flutter_bmi_calculator/models/congty.dart';
class SVPage extends StatelessWidget {
  static const String routeName = '/HSPage';
  CongTy congTy;

  SVPage({ this.congTy});

  @override
  Widget build(BuildContext context) {
    Map<String, CongTy> arguments = ModalRoute.of(context).settings.arguments;
    this.congTy = arguments['CongTy'];
    //Filter foods of from category
    List<SV> sinhvien = FAKE_SV.where((SV) => SV.congtyId== this.congTy.id).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('${congTy.tencty} '),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: sinhvien.length,
            itemBuilder: (context, index) {
              //We will continue in the next lesson
              SV sv = sinhvien[index];
              return InkWell(
                  onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => DetailHSPage(sv: sv)//send params using "constructor"
                    )
                );
              },
              child:  Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      clipBehavior: Clip.hardEdge,
                      child: Center(
                        child: FadeInImage.assetNetwork(
                            placeholder: 'assets/images/loading.gif',
                            image: sv.urlImage
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,right: 30,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Text('${sv.name}',
                        style: TextStyle(fontSize: 30, color: Colors.white),),
                    ),
                  ),
                ],
              ));
            }
        ),
      )
    );
  }
}