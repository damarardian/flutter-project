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
                          offset: Offset(0.000, 30.0)
                        )
                      ],
                      color: Colors.indigo[500],
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
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.indigo[500],
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.indigo[500],
                                      spreadRadius:1,
                                    )
                                  ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.5),
                                child: Column(
                                  children: <Widget>[
                                    Icon(Icons.calendar_today, color: Colors.white,),
                                    SizedBox(height: 3,),
                                    Text('Target', style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.indigo[500],
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.indigo[500],
                                      spreadRadius:1,
                                    )
                                  ]
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Column(
                                  children: <Widget>[
                                    Icon(Icons.assignment_turned_in, color: Colors.white,),
                                    SizedBox(height: 3,),
                                    Text('Setoran', style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.indigo[500],
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.indigo[500],
                                      spreadRadius:1,
                                    )
                                  ]
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4),
                                child: Column(
                                  children: <Widget>[
                                    Icon(Icons.featured_play_list, color: Colors.white,),
                                    SizedBox(height: 3,),
                                    Text('Hutang', style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
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
                            Container(
                              height: 100,
                              width: 115,
                              decoration: BoxDecoration(
                                  color: Colors.indigo[500],
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius:6,
                                        blurRadius: 4
                                    )
                                  ]
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    Icon(Icons.language,color: Colors.white,),
                                    Text('Total setoran', style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 115,
                              decoration: BoxDecoration(
                                  color: Colors.indigo[500],
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius:6,
                                        blurRadius: 4
                                    )
                                  ]
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(children: <Widget>[
                                  Icon(Icons.minimize,color: Colors.white,),
                                  Text('Total Hutang', style: TextStyle(color: Colors.white),)
                                ],
                                ),
                              ),
                            ),
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
