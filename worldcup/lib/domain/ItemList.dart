import 'Item.dart';

class ItemList {
  List<Item> _itemList = new List();
  int _index = -1;

  ItemList() {
    _itemList.add(new Item("1"));
    _itemList.add(new Item("2"));
    _itemList.add(new Item("3"));
    _itemList.add(new Item("4"));
    _itemList.add(new Item("5"));
    _itemList.add(new Item("6"));
    _itemList.add(new Item("7"));
    _itemList.add(new Item("8"));
    _itemList.shuffle();
  }

  List<Item> get item => _itemList;
  int get length => _itemList.length;

  Item get nextItem {
    _index++;
    if (_index >= length) return null;
    return _itemList[_index];
  }

  bool get isEnd {
    if ((_index + 1) == length) {
      return true;
    } else {
      return false;
    }
  }
}
