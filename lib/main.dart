import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 建立appTitle物件
    var appTitle = const Text('BMI計算機');
    // 建立appBody物件
    var appBody = bmi()
    ;

    // 建立appBar物件
    var appBar = AppBar(
      title: appTitle,
    );

    // 建立app物件
    var app = MaterialApp(
      home: Scaffold(
        appBar: appBar,
        body: appBody,
        backgroundColor: Colors.amber,
      ),
    );

    return app;
  }
}
class bmi extends StatefulWidget
{
  @override
  computebmi createState() => computebmi();

}

class computebmi extends State
{
  TextEditingController nameControllerw=TextEditingController();
  TextEditingController nameControllerh=TextEditingController();
  String _outputage = '';
  String _outputbmi = '';
  String ouput="";
  int? selectedValue;
  String t1="";
  void computeg()
  {
    var weightg;
    var heightg;
    var bmig;

    weightg = double.parse(nameControllerw.text);
    heightg = double.parse(nameControllerh.text);

    if(heightg>3)
    {
      heightg = heightg/100 ;
    }
    bmig = weightg/(heightg*heightg);
    formatNum(bmig, int postion) {
      if ((bmig.toString().length - bmig.toString().lastIndexOf(".") - 1) < postion) {
        //小數點後有幾位小數
     t1 = bmig.toStringAsFixed(postion).substring(0, bmig.toString().lastIndexOf(".") + postion + 1).toString();
      }
      else {
     t1 = bmig.toString().substring(0, bmig.toString().lastIndexOf(".") + postion + 1).toString();
      }
    }
    formatNum(bmig, 2);

    _outputage = "妳的年齡:"+_age.value.toString();
    switch(_age.value)
    {
      case 0:
        if(bmig < 11.5)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "過輕";
        }
        else if(bmig >= 11.5 && bmig < 14.7)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "正常";
        }
        else if(bmig >=14.7 && bmig <15.5)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "過重";
        }
        else if(bmig >=15.5)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "肥胖";
        }
        break;
      case 1:
        if(bmig < 14.2)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "過輕";
        }
        else if(bmig >= 14.2 && bmig < 17.9)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "正常";
        }
        else if(bmig >=17.9 && bmig <19.0)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "過重";
        }
        else if(bmig >=19.0)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "肥胖";
        }
        break;
      case 2:
        if(bmig < 13.7)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "過輕";
        }
        else if(bmig >= 13.7 && bmig < 17.2)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "正常";
        }
        else if(bmig >=17.2 && bmig <18.1)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "過重";
        }
        else if(bmig >=18.1)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "肥胖";
        }
        break;
      case 3:
        if(bmig < 13.5)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "過輕";
        }
        else if(bmig >= 13.5 && bmig < 16.9)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "正常";
        }
        else if(bmig >=16.9 && bmig <17.8)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "過重";
        }
        else if(bmig >=17.8)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "肥胖";
        }
        break;
      case 4:
        if (bmig < 13.2) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmig >= 13.2 && bmig < 16.8) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmig >= 16.8 && bmig < 17.9) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmig >= 17.9) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 5:
        if (bmig < 13.1) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmig >= 13.1 && bmig < 17.0) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmig >= 17.0 && bmig < 18.1) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmig >= 18.1) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 6:
        if (bmig < 13.1) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmig >= 13.1 && bmig < 17.2) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmig >= 17.2 && bmig < 18.8) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmig >= 18.8) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 7:
        if (bmig < 13.4) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmig >= 13.4 && bmig < 17.7) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmig >= 17.7 && bmig < 19.6) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmig >= 19.6) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 8:
        if (bmig < 13.8) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmig >= 13.8 && bmig < 18.4) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmig >= 18.4 && bmig < 20.7) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmig >= 20.7) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 9:
        if (bmig < 14.0) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmig >= 14.0 && bmig < 19.1) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmig >= 19.1 && bmig < 21.3) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmig >= 21.3) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 10:
        if (bmig < 14.3) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmig >= 14.3 && bmig < 19.7) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmig >= 19.7 && bmig < 22.0) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmig >= 22.0) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 11:
        if (bmig < 14.7) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmig >= 14.7 && bmig < 20.5) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmig >= 20.5 && bmig < 22.7) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmig >= 22.7) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 12:
        if (bmig < 15.2) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmig >= 15.2 && bmig < 21.3) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmig >= 21.3 && bmig < 23.5) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmig >= 23.5) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 13:
        if (bmig < 15.7) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmig >= 15.7 && bmig < 21.9) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmig >= 21.9 && bmig < 24.3) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmig >= 24.3) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 14:
        if (bmig < 16.3) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmig >= 16.3 && bmig < 22.5) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmig >= 22.5 && bmig < 24.9) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmig >= 24.9) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 15:
        if (bmig < 16.7) {
          _outputbmi = "妳的bmi為:" +t1;
          ouput = "過輕";
        }
        else if (bmig >= 16.7 && bmig < 22.7) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmig >= 22.7 && bmig < 25.2) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmig >= 25.2) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 16:
        if (bmig < 17.1) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmig >= 17.1 && bmig < 22.7) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmig >= 22.7 && bmig < 25.3) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmig >= 25.3) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 17:
        if (bmig < 17.3) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmig >= 17.3 && bmig < 22.7) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmig >= 22.7 && bmig < 25.3) {
          _outputbmi = "妳的bmi為:" +t1;
          ouput = "過重";
        }
        else if (bmig >= 25.3) {
          _outputbmi = "妳的bmi為:" + t1;
          ouput = "肥胖";
        }

        break;
      default:
        if(bmig < 18.5)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "過輕";
        }
        else if(bmig >= 18.5 && bmig < 24)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "正常";
        }
        else if(bmig >=24 && bmig <27)
        {
          _outputbmi =  "妳的bmi為:"+t1;
          ouput = "過重";
        }
        else if(bmig >=27)
        {
          _outputbmi =  "妳1的bmi為:"+t1;
          ouput = "肥胖";
        }
        break;

    }


  }
  void computeb()
  {
    var weightb;
    var heightb;
    var bmib;

    weightb = double.parse(nameControllerw.text);
    heightb = double.parse(nameControllerh.text);
    if(heightb>3)
    {
      heightb = heightb/100 ;
    }
    bmib = weightb/(heightb*heightb);
    formatNum(bmib, int postion) {
      if ((bmib.toString().length - bmib.toString().lastIndexOf(".") - 1) < postion) {
        //小數點後有幾位小數
        t1 = bmib.toStringAsFixed(postion).substring(0, bmib.toString().lastIndexOf(".") + postion + 1).toString();
      }
      else {
        t1 = bmib.toString().substring(0, bmib.toString().lastIndexOf(".") + postion + 1).toString();
      }
    }
    formatNum(bmib, 2);
    _outputage = "你的年齡:"+_age.value.toString();
    switch(_age.value)
    {
      case 0:
        if(bmib < 11.5)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "過輕";
        }
        else if(bmib >= 11.5 && bmib < 14.8)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "正常";
        }
        else if(bmib >=14.8 && bmib <15.8)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "過重";
        }
        else if(bmib >=15.8)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "肥胖";
        }
          break;
      case 1:
        if(bmib < 14.8)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "過輕";
        }
        else if(bmib >= 14.8 && bmib < 18.3)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "正常";
        }
        else if(bmib >=18.3 && bmib <19.2)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "過重";
        }
        else if(bmib >=19.2)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "肥胖";
        }
        break;
      case 2:
        if(bmib < 14.2)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "過輕";
        }
        else if(bmib >= 14.2 && bmib < 17.4)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "正常";
        }
        else if(bmib >=17.4 && bmib <18.3)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "過重";
        }
        else if(bmib >=18.3)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "肥胖";
        }
        break;
      case 3:
        if(bmib < 13.7)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "過輕";
        }
        else if(bmib >= 13.7 && bmib < 17.0)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "正常";
        }
        else if(bmib >=17.0 && bmib <17.8)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "過重";
        }
        else if(bmib >=17.8)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "肥胖";
        }
        break;
      case 4:
        if (bmib < 13.4) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmib >= 13.4 && bmib < 16.7) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmib >= 16.7 && bmib < 17.6) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmib >= 17.6) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 5:
        if (bmib < 13.3) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmib >= 13.3 && bmib < 16.7) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmib >= 16.7 && bmib < 17.7) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmib >= 17.7) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 6:
        if (bmib < 13.5) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmib >= 13.5 && bmib < 16.9) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmib >= 16.9 && bmib < 18.5) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmib >= 18.5) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 7:
        if (bmib < 13.8) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmib >= 13.8 && bmib < 17.9) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmib >= 17.9 && bmib < 20.3) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmib >= 20.3) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 8:
        if (bmib < 14.1) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmib >= 14.1 && bmib < 19.0) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmib >= 19.0 && bmib < 21.6) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmib >= 21.6) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 9:
        if (bmib < 14.3) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmib >= 14.3 && bmib < 19.5) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmib >= 19.5 && bmib < 22.3) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmib >= 22.3) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 10:
        if (bmib < 14.5) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmib >= 14.5 && bmib < 20.0) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmib >= 20.0 && bmib < 22.7) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmib >= 22.7) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 11:
        if (bmib < 14.8) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmib >= 14.8 && bmib < 20.7) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmib >= 20.7 && bmib < 23.2) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmib >= 23.2) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 12:
        if (bmib < 15.2) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmib >= 15.2 && bmib < 21.3) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmib >= 21.3 && bmib < 23.9) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmib >= 23.9) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 13:
        if (bmib < 15.7) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmib >= 15.7 && bmib < 21.9) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmib >= 21.9 && bmib < 24.5) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmib >= 24.5) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 14:
        if (bmib < 16.3) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmib >= 16.3 && bmib < 22.5) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmib >= 22.5 && bmib < 25.0) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmib >= 25.0) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 15:
        if (bmib < 16.9) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmib >= 16.9 && bmib < 22.9) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmib >= 22.9 && bmib < 25.4) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmib >= 25.4) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 16:
        if (bmib < 17.4) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmib >= 17.4 && bmib < 23.3) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmib >= 23.3 && bmib < 25.6) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmib >= 25.6) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "肥胖";
        }
        break;
      case 17:
        if (bmib < 17.8) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過輕";
        }
        else if (bmib >= 17.8 && bmib < 23.5) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "正常";
        }
        else if (bmib >= 23.5 && bmib < 25.6) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "過重";
        }
        else if (bmib >= 25.6) {
          _outputbmi = "你的bmi為:" + t1;
          ouput = "肥胖";
        }

        break;
      default:
        if(bmib < 18.5)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "過輕";
        }
        else if(bmib >= 18.5 && bmib < 24)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "正常";
        }
        else if(bmib >=24 && bmib <27)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "過重";
        }
        else if(bmib >=27)
        {
          _outputbmi =  "你的bmi為:"+t1;
          ouput = "肥胖";
        }
        break;

    }

  }

  final ValueNotifier<int> _age = ValueNotifier(20);
  static const int _maxAge = 100, _minAge = 0;
  final ValueNotifier<String> _text = ValueNotifier('');


  @override
  Widget build(BuildContext context) {
    final btnd = DropdownButton(
      items: const <DropdownMenuItem> [
        DropdownMenuItem(
          child:  Text('男', style: TextStyle(fontSize: 20),),
          value: 1,
        ),
        DropdownMenuItem(
          child:  Text('女', style: TextStyle(fontSize: 20),),
          value: 2,
        ),

      ],
      onChanged: (dynamic value) {
        setState(() {
          selectedValue = value as int;
        });
      },
      hint: const Text('請選擇性別', style: TextStyle(fontSize: 20),),
      value: selectedValue,
    );




    final nameFieldw = TextField(
      keyboardType: TextInputType.number,
      controller: nameControllerw,
      style: const TextStyle(fontSize: 20),
      decoration: const InputDecoration(
        labelText: '輸入體重',
        labelStyle: TextStyle(fontSize: 20),
      ),
    );


    final nameFieldh = TextField(
      keyboardType: TextInputType.number,
      controller: nameControllerh,
      style: const TextStyle(fontSize: 20),
      decoration: const InputDecoration(
        labelText: '輸入身高',
        labelStyle: TextStyle(fontSize: 20),
      ),
    );

    final btn = TextButton(
      child: const Text('計算',style: TextStyle(fontSize: 25,),),

      onPressed: () => setState(() {

        if(btnd.value == 1)
        {
          computeb();

        }
       else if (btnd.value == 2)
        {
         computeg();
        }



      }),
    );
    Widget _agePickerBuilder(BuildContext context, int selectedAge, Widget? child) {
      final wid = NumberPicker(
          value: selectedAge,
          minValue: _minAge,
          maxValue: _maxAge,
          onChanged: (newValue) => _age.value = newValue
      );

      return wid;
    }


   return Center(
      child: Column(
        children: <Widget>[
          Container(child: const Text('性別', style: TextStyle(fontSize: 20)), margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
            alignment: Alignment.center,),
          Container(child: btnd, margin: const EdgeInsets.symmetric(vertical: 10),),
          Container(child: nameFieldh, width: 200, margin: const EdgeInsets.symmetric(vertical: 10),),
          Container(child: nameFieldw, width: 200, margin: const EdgeInsets.symmetric(vertical: 10),),
          Container(child: const Text('年齡', style: TextStyle(fontSize: 20)), margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
            alignment: Alignment.center,),
          Container(child: ValueListenableBuilder<int>(builder: _agePickerBuilder,valueListenable: _age,),margin: const EdgeInsets.symmetric(vertical: 10),),

          Container(child: Text(_outputage, style: const TextStyle(fontSize: 20)),),
          Container(child: Text(_outputbmi, style: const TextStyle(fontSize: 20)),),
          Container(child: Text(ouput, style: const TextStyle(fontSize: 20)),),
          Container(child: btn, margin: const EdgeInsets.symmetric(vertical: 10),),
        ],
      ),
    );



  }



}