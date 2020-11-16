part of 'uis.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Add(),
//    Chat(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Mutabaah', style: TextStyle(color: Colors.white)),
        elevation: 0,
        backgroundColor: Colors.blueAccent[500],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.blueAccent,
        items: <Widget>[
          Icon(Icons.add, size: 30, color: Colors.white,),
          Icon(Icons.list, size: 30, color: Colors.white),
          Icon(Icons.compare_arrows, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: Container(
        child: Text("asd"),
      ),
      backgroundColor: Colors.white,
    );
  }
}
