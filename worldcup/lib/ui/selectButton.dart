import 'package:flutter/material.dart';
import '../domain/Item.dart';

class SelectButton extends StatelessWidget {
  final bool _where;
  final Item _name;
  final VoidCallback _onTap;

  SelectButton(this._where, this._name, this._onTap);

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Material(
        color: _where == true ? Colors.purple[100] : Colors.purple[300],
        child: new InkWell(
          onTap: () => _onTap(),
          child: new Center(
            child: new Container(
              decoration: new BoxDecoration(
                border: new Border.all(color: Colors.white, width: 5.0),
              ),
              padding: new EdgeInsets.all(20.0),
              child: new Text(
                _name.name,
                style: new TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
