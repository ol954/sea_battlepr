import 'package:flutter/material.dart';
import 'package:sea_battle/battlefield.dart';

class Screen extends StatefulWidget {
  @override
  State<Screen> createState() => _ScreenState();
}
class _ScreenState extends State<Screen>{
  Battlefield battlefield = Battlefield();

  @override
  Widget build(BuildContext context) {
    return drawField();
  }

  Widget drawField(){
    var rows = <Widget>[];
    int i=1;
    rows.add(Text(' A       B      C      D      E       F      G      H       I      J'));
    for (var x=1;x<=battlefield.dimension;x++){

      rows.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: drawRow(x, i),
      ));
      i++;
    }
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children :  rows);

  }

  List <Widget> drawRow(int x, int i){
    var elements = <Widget>[];
    elements.add(Text(i.toString()));
    for (var y=1;y<=battlefield.dimension;y++){

      elements.add( InkWell( onTap: () => onTapProcessint(x, y),//{print('$x, $y');},
        child:
        //Row(children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: getColor(x,y),
            border: Border.all(
            color: Colors.black,
            width: 2,
          ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

    );
    }
    return elements;
  }
  Color getColor(int x, int y){
    if (battlefield.cells[x-1][y-1] ==0) return Colors.blue;
    if (battlefield.cells[x-1][y-1] ==1) return Colors.green;
    if (battlefield.cells[x-1][y-1] ==2) return Colors.blue;
    if (battlefield.cells[x-1][y-1] ==3) return Colors.red;
    if (battlefield.cells[x-1][y-1] ==4) return Colors.grey;
    return Colors.black;
  }
  void onTapProcessint(int x, int y){
    if(battlefield.cells[x-1][y-1] == 0) battlefield.cells[x-1][y-1] = 4;
    if(battlefield.cells[x-1][y-1] == 2) battlefield.cells[x-1][y-1] = 4;
    if(battlefield.cells[x-1][y-1] == 1) battlefield.cells[x-1][y-1] = 3;
    setState(() {});
  }
}