import 'package:flutter/material.dart';
import '../domain/ItemList.dart';
import '../domain/Item.dart';
import '../ui/selectButton.dart';
import '../ui/selectName.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  ItemList _itemList = new ItemList();
  List<Item> winningItemList = new List();
  ULink _uLink = new ULink();
  Item _selectName;

  Item _name1;
  Item _name2;
  String url1;
  String url2;
  bool _where;

  bool overlayShouldBevisible = false;
  @override
  void initState() {
    super.initState();
    _name1 = _itemList.nextItem;
    _name2 = _itemList.nextItem;
    url1 = _uLink.nextUrl;
    url2 = _uLink.nextUrl;
  }

  void handleSelect(Item name, bool where) {
    _selectName = name;
    _where = where;
    this.setState(() {
      overlayShouldBevisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: [
        new Column(
          children: [
            new SelectButton(true, _name1, () => handleSelect(_name1, true)),
            new SelectButton(false, _name2, () => handleSelect(_name2, false)),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: FlatButton(
                    color: Colors.purple,
                    onPressed: () {
                      print(url1);
                      print(url2);
                    },
                    child:
                        Text("qwqwqw", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            )
          ],
        ),
        overlayShouldBevisible == true
            ? new SelectName(_selectName, _itemList.isEnd, () {
                if (_itemList.isEnd == false) {
                  this.setState(() {
                    overlayShouldBevisible = false;
                    if (_where == true) {
                      _name1 = _selectName;
                      _name2 = _itemList.nextItem;
                    } else {
                      _name2 = _selectName;
                      _name1 = _itemList.nextItem;
                    }
                  });
                  return;
                }
              })
            : new Container(),
      ],
    );
  }
}
