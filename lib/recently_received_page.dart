import 'package:flutter/material.dart';

class RecentlyReceivedPage extends StatefulWidget {
  @override
  _RecentlyReceivedPageState createState() => _RecentlyReceivedPageState();
}

class _RecentlyReceivedPageState extends State<RecentlyReceivedPage> {
  List<Widget> children = <Widget>[];
  int currentlySelectedIndex = 1;

  Widget createLogo() {
    return Container(
      child: SizedBox(
        child: Image.asset('assets/images/sadul.jpg'),
        height: 70,
      ),
      margin: EdgeInsets.only(left: 15, top: 115),
    );
  }

  Widget createText() {
    return Text(
      'Recently received',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }

  Widget letterHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 10, left: 10),
            child: Image.asset(
              'assets/images/sadul.jpg',
              width: 10,
            )),
        //Spacer(flex: 10,),

        Image.asset(
          'assets/images/sadul.jpg',
          width: 50,
        ),
      ],
    );
  }

  Widget createLetter() {
    return SizedBox(
      height: 250,
      width: 150,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            letterHeader(),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'Hej! (this is hello in Danish) I\'m Jens from Copenhagen,Denmark...',
              ),
            ),
            Text(
              'Jens',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Today 6.15 PM',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget createLetterList() {
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return SizedBox(
              width: 100,
            );
          }
          return createLetter();
        },
      ),
    );
  }

  Widget createFooter() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 15,
        ),
        Icon(IconData(57673, fontFamily: 'MaterialIcons')),
        SizedBox(
          width: 20,
        ),
        Text(
          'No incoming letters',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ],
    );
  }

  Widget createHorizontalLine() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      color: Colors.black26,
      height: 1.5,
      width: double.infinity,
    );
  }

  @override
  void initState() {
    children.add(Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        createLogo(),
        createText(),
        SizedBox(
          height: 25,
        ),
        createLetterList(),
        SizedBox(
          height: 25,
        ),
        createFooter(),
        createHorizontalLine(),
      ],
    ));

    children.add(Center(
      child: Text("Second page"),
    ));
    children.add(Center(
      child: Text("Third page"),
    ));
    children.add(Center(
      child: Text("forth page"),
    ));
    children.add(Center(
      child: Text("fifth page"),
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(100, 20, 50, 20),
      body: children[currentlySelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentlySelectedIndex,
        onTap: (int index) {
          setState(() {
            currentlySelectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.motorcycle),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_add),
            title: Text(""),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_circle),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text(""),
          ),
        ],
      ),
    );
  }
}
