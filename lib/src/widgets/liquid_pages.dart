import 'package:flutter/material.dart';
import 'package:liquid_swiper/main.dart';

final estiloTexto = TextStyle(fontSize: 20.0, color: Colors.white);

final List<Container> howToWinFriends = [
  Container(
    color: Colors.pink[300],
    child: Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Text('Be a good listener', style: estiloTexto),
      ),
    ),
    //  ],
  ),
  //),
  Container(
    color: Colors.deepPurple[300],
    child: Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Text('Become genuinely interested in other people',
            style: estiloTexto),
      ),
    ),
    // ],
  ),
  //),
  Container(
    color: Colors.green[300],
    child: Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Text(
            'Make the other person feel important - and do it sincerely',
            style: estiloTexto),
      ),
    ),
    //  ],
  ),
  // ),
  Container(
    color: Colors.blue[300],
    child: Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Text('Smile', style: estiloTexto),
      ),
    ),
    // ],
  ),
  // ),
  Container(
    color: Colors.orange[300],
    child: Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Text('Talk in terms of the other person interests',
            style: estiloTexto),
      ),
    ),
    // ],
    // ),
  )
];

final List<Container> the4HourWorkWeek = [
  Container(
    color: Colors.pink[300],
    child: Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Text('What we fear doing most, is what we most need to do',
            style: estiloTexto),
      ),
    ),
    //  ],
  ),
  //),
  Container(
    color: Colors.deepPurple[300],
    child: Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Text('People choose unhappiness over uncertainty',
            style: estiloTexto),
      ),
    ),
    // ],
  ),
  //),
  Container(
    color: Colors.green[300],
    child: Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Text('Focus on being productive instead of busy',
            style: estiloTexto),
      ),
    ),
    //  ],
  ),
  // ),
  Container(
    color: Colors.blue[300],
    child: Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Text('Smile', style: estiloTexto),
      ),
    ),
    // ],
  ),
  // ),
  Container(
    color: Colors.orange[300],
    child: Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Text('Talk in terms of the other person interests',
            style: estiloTexto),
      ),
    ),
    // ],
    // ),
  )
];

final List<Container> theLawofSuccess = [
  Container(
    color: Colors.pink[300],
    child: Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Text('Failures are temporary defeats', style: estiloTexto),
      ),
    ),
    //  ],
  ),
  //),
  Container(
    color: Colors.deepPurple[300],
    child: Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Text('Fears are nothing more than a state of mind',
            style: estiloTexto),
      ),
    ),
    // ],
  ),
  //),
  Container(
    color: Colors.green[300],
    child: Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Text('Power is organized effort', style: estiloTexto),
      ),
    ),
    //  ],
  ),
  // ),
  Container(
    color: Colors.blue[300],
    child: Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Text('Where thought prevails, power may be found',
            style: estiloTexto),
      ),
    ),
    // ],
  ),
  // ),
  Container(
    color: Colors.orange[300],
    child: Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Text('Talk in terms of the other person interests',
            style: estiloTexto),
      ),
    ),
    // ],
    // ),
  )
];

final List<Container> theSecret = [
  Container(
    color: Colors.pink[300],
    child: Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Text('The Secret', style: estiloTexto),
      ),
    ),
    //  ],
  ),
  //),
  Container(
    color: Colors.deepPurple[300],
    child: Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Text('Become genuinely interested in other people',
            style: estiloTexto),
      ),
    ),
  )
];

/*



class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'How to win friends';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['How to win friends', 'The 4 hour work-week', 'The secret', 'The law of success']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}





*/
