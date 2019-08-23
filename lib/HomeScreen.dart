import 'package:flutter/material.dart';

import 'CustomTheme.dart';
import 'Themes.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _changeTheme(BuildContext buildContext, MyThemeKeys key) {
    CustomTheme.instanceOf(buildContext).changeTheme(key);
  }

  List<String> litems = [
    "lib/images/1.JPG",
    "lib/images/2.JPG",
    "lib/images/3.JPG",
    "lib/images/4.JPG",
    "lib/images/5.JPG"
  ];
  List<String> litems_text = [
    "Beach",
    "Sunset Beach",
    "Aura",
    "Country Road",
    "Hills"
  ];
  List<String> litems_subtext = [
    "Madrid, Spain",
    "Rome, Italy",
    "Paris, France",
    "Qubec, Canada",
    "Kathmandu, Nepal"
  ];

  List<String> litems_hotel_pic = [
    "lib/images/6.JPG",
    "lib/images/7.JPG",
    "lib/images/6.JPG",
    "lib/images/7.JPG",
  ];

  List<String> litems_hotel_location = [
    "Burj Al Arab, Dubai",
    "New York City, USA",
    "Burj Al Arab, Dubai",
    "New York City, USA",
  ];

  List<String> litems_hotel_price = [
    "1100",
    "860",
    "1100",
    "860",
  ];
  List<String> litems_hotel_Name = [
    "Burj Khalifa",
    "Plaza Hotel",
    "Burj Khalifa",
    "Plaza Hotel",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Stack(
              children: <Widget>[
                Icon(Icons.notifications),
                new Positioned(
                  right: 0,
                  child: new Container(
                    padding: EdgeInsets.all(1),
                    decoration: new BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: new Text(
                      "",
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
        elevation: 0.00,
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Where are you going?",
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(8.0),
                      height: 50.0,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: TextField(
                                textAlign: TextAlign.left,
                                decoration: InputDecoration(
                                    contentPadding:
                                        new EdgeInsets.symmetric(vertical: 0.0),
                                    border: InputBorder.none,
                                    hintText: 'E.g Kathmandu, Nepal',
                                    hintStyle: TextStyle(fontSize: 13.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width - 40,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: litems.length,
                        itemBuilder: (BuildContext context, index) {
                          return Column(
                            children: <Widget>[
                              Flexible(
                                flex: 2,
                                child: Container(
                                  color: Colors.transparent,
                                  height: MediaQuery.of(context).size.width,
                                  width:
                                      MediaQuery.of(context).size.width * (0.3),
                                  child: Card(
                                    elevation: 0.00,
                                    color: Colors.transparent,
                                    child: FittedBox(
                                      child: ClipRRect(
                                          borderRadius:
                                              new BorderRadius.circular(50.0),
                                          child: Image.asset(litems[index])),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                  flex: 0,
                                  child: Text(
                                    litems_text[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  )),
                              Flexible(
                                  flex: 0,
                                  child: Text(
                                    litems_subtext[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 10),
                                  )),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Container(
                            height: MediaQuery.of(context).size.width,
                            width: MediaQuery.of(context).size.width - 40,
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: litems_hotel_Name.length,
                                itemBuilder: (BuildContext context, index) {
                                  return Row(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            color:  Theme.of(context).primaryColor,
                                            
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                (0.3),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                (0.3),
                                            child: Card(
                                              elevation: 0.00,
                                              color: Theme.of(context).primaryColor,
                                              child: FittedBox(
                                                child: ClipRRect(
                                                    borderRadius:
                                                        new BorderRadius
                                                            .circular(20.0),
                                                    child: Image.asset(
                                                        litems_hotel_pic[
                                                            index])),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                litems_hotel_Name[index],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.location_on,
                                                color: Colors.grey,
                                                size: 15,
                                              ),
                                              Container(
                                                child: Text(
                                                  litems_hotel_location[index],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 10),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                "\$" +
                                                    litems_hotel_price[index] +
                                                    "/night",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            new Container(
              child: new DrawerHeader(
                  child: new CircleAvatar(
                backgroundColor: Colors.red,
              )),
              color: Theme.of(context).primaryColor,
            ),
            new Container(
              color: Theme.of(context).backgroundColor,
              child: new Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new FlatButton(
                        onPressed: () {
                          _changeTheme(context, MyThemeKeys.DARKER);
                        },
                        child: new Padding(
                          padding: new EdgeInsets.all(20.0),
                          child: new Text(
                            "Darker Theme",
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new FlatButton(
                        onPressed: () {
                          _changeTheme(context, MyThemeKeys.DARK);
                        },
                        child: new Padding(
                          padding: new EdgeInsets.all(20.0),
                          child: new Text(
                            "Dark Theme",
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new FlatButton(
                        onPressed: () {
                          _changeTheme(context, MyThemeKeys.LIGHT);
                        },
                        child: new Padding(
                          padding: new EdgeInsets.all(20.0),
                          child: new Text(
                            "Light Theme",
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new FlatButton(
                        onPressed: () {
                          _changeTheme(context, MyThemeKeys.SKYBLUE);
                        },
                        child: new Padding(
                          padding: new EdgeInsets.all(20.0),
                          child: new Text(
                            "Sky Blue Theme",
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new FlatButton(
                        onPressed: () {
                          _changeTheme(context, MyThemeKeys.BLOOD);
                        },
                        child: new Padding(
                          padding: new EdgeInsets.all(20.0),
                          child: new Text(
                            "Blood Theme",
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        elevation: 0.00,
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.favorite),
            title: new Text('Favourite'),
          ),
          BottomNavigationBarItem(
              icon: Stack(
                children: <Widget>[
                  Icon(Icons.message),
                  new Positioned(
                    right: 0,
                    child: new Container(
                      padding: EdgeInsets.all(1),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 12,
                        minHeight: 12,
                      ),
                      child: new Text(
                        '2',
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
              title: Text('Messages')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile'))
        ],
      ),
    );
  }
}
