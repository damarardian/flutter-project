part of 'uis.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height* 0.45,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.7),
                          blurRadius: 20,
                          spreadRadius: 2,

                        )
                      ],
                      color: Color(0xFFF9BE7C),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      )
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 120),
                            child: Container(
                              height: 105,
                              width: 105,
                              decoration: BoxDecoration(
                                  color: Colors.indigo[400],
                                  borderRadius: BorderRadius.circular(52.5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.yellow,
                                      spreadRadius:2,
                                    )
                                  ]
                              ),
                              child: CircleAvatar(
                                radius: 50,
//                            backgroundImage: AssetImage('assets/selena.jpg'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text('@user', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),),
                      Padding(
                        padding: EdgeInsets.only( bottom: 35),
                        child: Text('Admin User', style: TextStyle(color: Colors.white,fontSize: 23, fontWeight: FontWeight.bold  ),),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40, right: 34, left: 34),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 40, left: 20,bottom: 10,right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[

                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
