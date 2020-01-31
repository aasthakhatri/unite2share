import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.pink
      ),
      title: "Simple Stateful Widget",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = "";
  bool showProgress = false;
  List<String> _country = ['California', 'India', 'Singapore', 'Srilanka','Brazil']; // Option 2
  String _selectedCountry;
  List<String> _city = ['City1', 'City2', 'City3', 'City4','City5']; // Option 2
  String _selectedCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // backgroundColor: Colors.teal,
        leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip:'menu' ,
            onPressed: null),
        title: Text("Welcome to Unite2Share! :)"),
        backgroundColor: Colors.amber,
      ),

      body:Center(
      child:Container(
        color: Colors.white,
        //alignment: AlignmentDirectional(0.0, 0.0),

        child: Container(

            color: Colors.pinkAccent,
          //padding: const EdgeInsets.all(3.0),
          /*decoration: new BoxDecoration(
              borderRadius:BorderRadius.all(Radius.circular(2.0)),
              border: new Border.all(color: Colors.black38)
          ),*/
          margin: new EdgeInsets.fromLTRB(10.0, 70.0, 10.0, 0.0),
          constraints: BoxConstraints(
              maxHeight: 400.0,
              maxWidth: 350.0,
              minWidth: 150.0,
              minHeight: 0.0
          ),
            alignment: AlignmentDirectional(0.0, 1.0),
        //decoration: const BoxDecoration(Colors.amber),
        child :Column(
        children: <Widget>[
          ListTile(
            onTap: null,
            leading: Text(
                'Find Social Drives in Region',
              style: Theme.of(context).textTheme.display1.merge(
                  TextStyle(fontSize: 25.0,color: Colors.white),
              ),

            ),
          ),
          Row(
            children: <Widget>[
          /**/
              Text("Select Country: $text", style: Theme.of(context).textTheme.display1.merge(
                  TextStyle(fontSize: 18.0,backgroundColor: Colors.pink,color: Colors.amberAccent)),
              ),
              SizedBox(width: 10,),
              DropdownButton(
                hint: Text('Please choose Country',style: TextStyle(color: Colors.white),), // Not necessary for Option 1
                value: _selectedCountry,

                iconEnabledColor: Colors.amber,
                //elevation: kRadialReactionAlpha,
                focusColor: Colors.amber,

                //isDense: true,
                onChanged: (newValue) {
                  setState(() {
                    _selectedCountry = newValue;
                  });
                },
                items: _country.map((country) {
                  return DropdownMenuItem(
                    child: new Text(country),
                    value: country,
                  );
                }).toList(),
              ),

            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Text("Select City: $text", style: Theme.of(context).textTheme.display1.merge(
                  TextStyle(fontSize: 18.0,backgroundColor: Colors.pink,color: Colors.amberAccent)),),
              SizedBox(width: 40,),
              DropdownButton(
                hint: Text('Please choose City',style: TextStyle(color: Colors.white),), // Not necessary for Option 1
                value: _selectedCity,
                iconEnabledColor: Colors.amber,
                //elevation: kRadialReactionAlpha,
                focusColor: Colors.amber,
                //isDense: true,
                onChanged: (newValue) {
                  setState(() {
                    _selectedCity = newValue;
                  });
                },
                items: _city.map((city) {
                  return DropdownMenuItem(
                    child: new Text(city),
                    value: city,
                  );
                }).toList(),
              ),
            ],
          ),
          SizedBox(height: 50,),
          RaisedButton(
            color: Colors.amber,
            child: Text("Next", style: TextStyle(color: Colors.white),),
            onPressed: (){
              setState(() {
                showProgress = !showProgress;
              });
            },
          )
        ],
      ),
        ),

      ),
      ),
      /*body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0,),
        child: Row(
          children: <Widget>[
            Text("Select Country: $text", style: Theme.of(context).textTheme.display1.merge(TextStyle(fontSize: 18.0)),),

            DropdownButton(
              hint: Text('Please choose a Country'), // Not necessary for Option 1
              value: _selectedCountry,
              onChanged: (newValue) {
                setState(() {
                  _selectedCountry = newValue;
                });
              },
              items: _country.map((country) {
                return DropdownMenuItem(
                  child: new Text(country),
                  value: country,
                );
              }).toList(),
            ),
            RaisedButton(
              color: Colors.indigoAccent,
              child: Text("Next", style: TextStyle(color: Colors.white),),
              onPressed: (){
                setState(() {
                  showProgress = !showProgress;
                });
              },
            )
          ],
        ),
      ),*/
    );
  }
}