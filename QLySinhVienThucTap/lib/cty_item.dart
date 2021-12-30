import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/ctychitiet.dart';
import 'package:flutter_bmi_calculator/models/congty.dart';
class CongTyItem extends StatelessWidget{
  CongTy congTy;
  CongTyItem({  this.congTy});
  @override
  Widget build(BuildContext context){
    Color _color=this.congTy.color;
    return InkWell(
      onTap: (){
        print('tapped to category: ${this.congTy.tencty}');
        //Navigate to another page
        //Pages are stored into a Stack, the page you see is the top Page(in the stack)
       /* Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => HSPage(classLop: this.classlop,)//you can send parameters using constructor

        ));*/


        //Are there another way to send parameters ? Yes !, Use RouteNames
        Navigator.pushNamed(context, '/SVPage', arguments: {'CongTy': congTy});
      },
      splashColor: Colors.deepPurple,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Now change font's family from "Google Fonts"
            Text(this.congTy.tencty,
                style: Theme.of(context).textTheme.headline6),
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  _color.withOpacity(0.8),
                  _color
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft
            ),
            color:_color,
            borderRadius: BorderRadius.circular(20)
        ),
      ),
    );
  }
}