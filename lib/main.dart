import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  bool checkBoxValue = false;
  bool checkBoxValue2 = false;
  bool checkBoxValue3 = false;

  String actionText = "Default";
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      title: "MySampleApplication",
      home: new Scaffold(
          appBar: new AppBar(title: new Center (child:
        new Text("Checkbox"),),
              actions: <Widget>[]),
          body: new Center(
            child:
            new Column(
              children: <Widget>[
                new Padding(padding: EdgeInsets.only(top: 15.0),
                child:   new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[

                        new Checkbox(
                            activeColor: Colors.red,
                            value: checkBoxValue,
                            onChanged: (bool newValue) {
                              setState(() {
                                checkBoxValue = newValue;
                                print(checkBoxValue);
                              });
                            }), new Text("YES", ),
                      ],
                    )
                )
                ,
                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    new Checkbox(
                        activeColor: Colors.green,
                        value: checkBoxValue2,
                        onChanged: (bool newValue) {
                          setState(() {
                            checkBoxValue2 = newValue;
                            print(checkBoxValue2);
                          });
                        }), new Text("NO"),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    new Checkbox(
                        activeColor: Colors.blue,
                        value: checkBoxValue3,
                        onChanged: (bool newValue) {
                          setState(() {
                            checkBoxValue3 = newValue;
                            print(checkBoxValue3);
                          });
                        }), new Text("MAYBE"),
                  ],
                ),

              ],
            ),
          )),
    );
  }
}
