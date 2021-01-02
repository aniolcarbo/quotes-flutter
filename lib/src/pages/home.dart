import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:liquid_swipe/Constants/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'package:liquid_swiper/src/widgets/liquid_pages.dart';

String llibre = 'How to win friends';
String afegir = "quote";
const PrimaryColor = const Color(0xFF151026);


class KeyValuePairDropdown extends StatefulWidget {
  @override
  KeyValuePairDropdownState createState() {
    return new KeyValuePairDropdownState();
  }
}


class KeyValuePairDropdownState extends State<KeyValuePairDropdown> {
  final List<String> _dropdownValues = [
    "How to win friends",
    "The four hour work-week",
    "The law of success",
    "The Secret"
  ]; //The list of values we want on the dropdown
  String dropdownValue = "How to win friends"; //var to hold currently selected value

  //make the drop down its own widget for readability
  Widget dropdownWidget() {

    return new Theme( //DETERMINA COLOR DEL DROPDOWN
    data: Theme.of(context).copyWith(
      canvasColor: PrimaryColor
    ),
    child: DropdownButton(
      value: dropdownValue,

     //value: _dropdownValues.first,

      icon: Icon(Icons.arrow_drop_down),
        iconSize: 24,
        elevation: 16,
        underline: Container(
          height: 0,
          color: PrimaryColor,
        ),
     
      //map each value from the lIst to our dropdownMenuItem widget
      items: _dropdownValues
          .map((value) => DropdownMenuItem(
                child: Text(value, style: TextStyle(fontSize: 20.0, color: Colors.white)),
                value: value,
              ))
          .toList(),
      onChanged: (String value) {
        //once dropdown changes, update the state of out currentValue
        setState(() {
          dropdownValue = value;
          llibre = value;
        });
      },
      //this wont make dropdown expanded and fill the horizontal space
      isExpanded: false,
      //make default value of dropdown the first value of our list
      
    ),
    );
  }


  createAlertDialog(BuildContext context){

    String result = "";

    TextEditingController customController = TextEditingController();

    if (afegir == "quote"){

      return showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text("Your new quote"),
          content: TextField(
            controller: customController,
            onChanged: (String str){
                setState(() {
                  result = str;
                });
            },
          ),
          actions: <Widget>[
            MaterialButton(
              elevation: 5.0,
              child: Text("Save"),
              onPressed: (){
                //funcio que afegeix quote
               // if (llibre == 'How to win friends') howToWinFriends.add(str);
              },
            )
          ],
        );
      });
    }

    else{
      return showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text("Your new book"),
          content: TextField(
            controller: customController,
            onChanged: (String str){
                setState(() {
                  result = str;
                });
            },
          ),
          actions: <Widget>[
            MaterialButton(
              elevation: 5.0,
              child: Text("Create"),
              onPressed: (){
                //funcio que afegeix llibre
              },
            )
          ],
        );
      });
    }

    }

  @override
  Widget build(BuildContext context) {
   return Scaffold(

        //APPBAR AMB DROPDOWN
        
        appBar: PreferredSize(
             preferredSize: Size.fromHeight(70.0), // here the desired height
             child: AppBar(
              shape: CustomShapeBorder(),
                //title: Text('QUOTES'),
                backgroundColor: PrimaryColor,
                actions: <Widget>[
                  //Add the dropdown widget to the `Action` part of our appBar. it can also be among the `leading` part
                  Padding (
                    padding: EdgeInsets.fromLTRB(0, 30, 75, 0),
                    child: dropdownWidget()),
                ],
              ),
            ),

            //BOTO D'AFEGIR

            floatingActionButton: SpeedDial(
              animatedIcon: AnimatedIcons.menu_close,
              children:[
                SpeedDialChild(
                  child: Icon(Icons.create),
                  label: "Add a quote",
                  onTap: (){
                    afegir = "quote";
                    createAlertDialog(context);
                  }
                ),
                SpeedDialChild(
                  child: Icon(Icons.book),
                  label: "Add a book",
                  onTap: () {
                    afegir = "book";
                    createAlertDialog(context);
                  }
                )
              ]
            ),
         
         //BODY AMB LIQUID SWIPE
         
          body: LiquidSwipe(
                pages: displayLlibre(),
                fullTransitionValue: 400,
                enableLoop: true,
                enableSlideIcon: false,
                positionSlideIcon: 0.8,
                slideIconWidget: Icon(Icons.arrow_back_ios),
                waveType: WaveType.liquidReveal,
                onPageChangeCallback: (page) => pageChangeCallback(page),
                currentUpdateTypeCallback: ( updateType ) => updateTypeCallback( updateType ),
              )
        //  ],
      //  ),
    );
  }
    
  pageChangeCallback(int page) {
    print( page );
  }

  updateTypeCallback( UpdateType updateType) {
    print( updateType );
  }

  displayLlibre(){
    
      if (llibre == 'How to win friends'){
        return howToWinFriends;
      }
      else if (llibre == 'The four hour work-week'){
        return the4HourWorkWeek;
      }
      else if (llibre == 'The law of success'){
        return theLawofSuccess;
      }
      else{
        return theSecret;
      }
  
  }

}



class CustomShapeBorder extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {

   // final double innerCircleRadius = 150.0;

    Path path = Path();

    //pintar tot el rectangle de la appbar
   path.lineTo(rect.width, 0);
   path.lineTo(rect.width, rect.height);
   path.lineTo(0, rect.height);

  //pintar curva
  path.moveTo(0, rect.height);
  path.quadraticBezierTo(rect.width/2, rect.height * 2, rect.width, rect.height);

    path.close();

    return path;
  }
}

/////////COMENTARIS///////////////////


/* CLASSE ORIGINAL LIQUID SWIPE

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: liquidPages, //crida a les slides
        fullTransitionValue: 300,
        enableLoop: true,
        enableSlideIcon: true,
        positionSlideIcon: 0.8,
        waveType: WaveType.liquidReveal,
        onPageChangeCallback: (page) => pageChangeCallback(page),
        currentUpdateTypeCallback: ( updateType ) => updateTypeCallback( updateType ),
      )
    );
  }

  pageChangeCallback(int page) {
    print( page );
  }

  updateTypeCallback( UpdateType updateType) {
    print( updateType );
  }


}

*/


/* CURVED CLIPPER PER APPBAR

Scaffold(
  body: Column(
    children: <Widget><[
      ClipPath(
        clipper:MyClipper(),
        child: Container(
          height: 320,
          decoration: BoxDecorationColor(color: Colors.red),
          child: Center(
            child: dropdownWidget(),
            ),
          ),
        ),
      ),
      LiquidSwipe(
            pages: displayLlibre(),
            fullTransitionValue: 400,
            enableLoop: true,
            enableSlideIcon: true,
            positionSlideIcon: 0.8,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            waveType: WaveType.liquidReveal,
            onPageChangeCallback: (page) => pageChangeCallback(page),
            currentUpdateTypeCallback: ( updateType ) => updateTypeCallback( updateType ),
          )
    ],
  ),

);

*/

/* CLASSE CLIPPER AMB FORMA RODONA (PER CODI DE SOBRE)

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path = new Path();
    path.lineTo(0,size.height-70);
    var controllPoint=Offset(50, size.height);
    var endPoint=Offset(size.width/2, size.height);
    path.quadraticBezierTo(controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return true;
  }
}
*/



/* FUNCIO ORIGINAL DROPDOWN


class KeyValuePairDropdown extends StatefulWidget {
  @override
  KeyValuePairDropdownState createState() {
    return new KeyValuePairDropdownState();
  }
}





class KeyValuePairDropdownState extends State<KeyValuePairDropdown> {
  final List<String> _dropdownValues = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five"
  ]; //The list of values we want on the dropdown
  String _currentlySelected = ""; //var to hold currently selected value

  //make the drop down its own widget for readability
  Widget dropdownWidget() {
    return DropdownButton(
      //map each value from the lIst to our dropdownMenuItem widget
      items: _dropdownValues
          .map((value) => DropdownMenuItem(
                child: Text(value),
                value: value,
              ))
          .toList(),
      onChanged: (String value) {
        //once dropdown changes, update the state of out currentValue
        setState(() {
          _currentlySelected = value;
        });
      },
      //this wont make dropdown expanded and fill the horizontal space
      isExpanded: false,
      //make default value of dropdown the first value of our list
      value: _dropdownValues.first,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUOTES'),
        actions: <Widget>[
          //Add the dropdown widget to the `Action` part of our appBar. it can also be among the `leading` part
          dropdownWidget(),
        ],
      ),
      //display currently selected item on dropdown
      body: Center(child: Text(_currentlySelected)),
    );
  }
}


*/


