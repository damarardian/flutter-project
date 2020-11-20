part of 'uis.dart';

class Setor extends StatefulWidget {
  @override
  _SetorState createState() => _SetorState();
}

class _SetorState extends State<Setor> {
  List dataSetor;

  void setorPost(){
    getSetor().then((value){
      setState(() {
        dataSetor = value;
      });
    });
  }
  @override
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
