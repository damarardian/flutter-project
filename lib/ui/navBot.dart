part of 'uis.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int pages = 1;

  final Add  add = Add();
  final History history = History();
  final Home home = Home();

  Widget showPages = Home();

  // Rooting

  Widget choosePages(int page){
    switch(page){
      case 0:
        return add;
        break;
      case 1:
        return home;
        break;
      case 2:
        return history;
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: <Widget>[showPages],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
          Icon(Icons.add,color: Colors.white),
          Icon(Icons.home,color: Colors.white),
          Icon(Icons.history,color: Colors.white),
        ],
        color: Colors.blueAccent,
        height: 50,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 500),
        index: pages,
        onTap: (int tap){
          setState(() {
            showPages = choosePages(tap);
          });
        },
      ),
    );
  }
}
