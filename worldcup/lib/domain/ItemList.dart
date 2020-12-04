import 'Item.dart';

class ULink {
  int _index = -1;

  Map<String, String> _uLink = new Map();
  ULink() {
    _uLink["DNA"] = "https://www.youtube.com/watch?v=MBdVXkSdhwU";
    _uLink["Poem for Small Things"] =
        "https://www.youtube.com/watch?v=XsX3ATc3FbA";
    _uLink["FAKE LOVE"] = "https://www.youtube.com/watch?v=7C2z4GqqS5E";
    _uLink["MIC Drop"] = "https://www.youtube.com/watch?v=kTlv5_Bs8aw";
    _uLink["IDOL"] = "https://www.youtube.com/watch?v=pBuZEGYXA6E";
    _uLink["FIRE"] = "https://www.youtube.com/watch?v=ALj5MKjy2BU";
    _uLink["Blood Sweat & Tears"] =
        "https://www.youtube.com/watch?v=hmE9f-TEutc";
    _uLink["Dynamite"] = "https://www.youtube.com/watch?v=gdZLi9oWNZg";
    _uLink["Dope"] = "https://www.youtube.com/watch?v=BVwAVbKYYeM";
    _uLink["Save ME"] = "https://www.youtube.com/watch?v=GZjt_sA2eso";
    _uLink["Not Today"] = "https://www.youtube.com/watch?v=9DwzBICPhdM";
    _uLink["Spring Day"] = "https://www.youtube.com/watch?v=xEeFrLSkMm8";
    _uLink["Boy In Luv"] = "https://www.youtube.com/watch?v=m8MfJg68oCs";
    _uLink["War of Hormone"] = "https://www.youtube.com/watch?v=XQmpVHUi-0A";
    _uLink["ON"] = "https://www.youtube.com/watch?v=mPVDGOVjRQ0";
    _uLink["I NEED U"] = "https://www.youtube.com/watch?v=NMdTd9e-LEI";
    _uLink["Black Swan"] = "https://www.youtube.com/watch?v=0lapF4DQPKQ";
    _uLink["Life Goes On"] = "https://www.youtube.com/watch?v=-5q5mZbe3V8";
    _uLink["No More Dream"] = "https://www.youtube.com/watch?v=rBG5L7UsUxA";
    _uLink["Danger"] = "https://www.youtube.com/watch?v=bagj78IQ3l0";
    _uLink["Just one day"] = "https://www.youtube.com/watch?v=DTcKkcyS410";
    _uLink["RUN"] = "https://www.youtube.com/watch?v=5Wn85Ge22FQ";
    _uLink["Make It Right"] = "https://www.youtube.com/watch?v=Ddr4AlbwMJ0";
    _uLink["N.O"] = "https://www.youtube.com/watch?v=r5GaAEHvHj0";
    _uLink["Young Forever"] = "https://www.youtube.com/watch?v=HBj4y9Zibao";
    _uLink["Euphoria"] = "https://www.youtube.com/watch?v=kX0vO4vlJuU";
  }
  Map<String, String> get url => _uLink;
  int get length => _uLink.length;

  String get nextUrl {
    _index++;
    if (_index >= length) return null;
    return _uLink[_index];
  }

  bool get isEnd {
    if ((_index + 1) == length) {
      return true;
    } else {
      return false;
    }
  }
}

class ItemList {
  List<Item> _itemList = new List();
  int _index = -1;

  ItemList() {
    _itemList.add(new Item("DNA"));
    _itemList.add(new Item("Poem for Small Things"));
    _itemList.add(new Item("FAKE LOVE"));
    _itemList.add(new Item("MIC Drop"));
    _itemList.add(new Item("IDOL"));
    _itemList.add(new Item("FIRE"));
    _itemList.add(new Item("Blood Sweat & Tears"));
    _itemList.add(new Item("Dynamite"));
    _itemList.add(new Item("Dope"));
    _itemList.add(new Item("Save ME"));
    _itemList.add(new Item("Not Today"));
    _itemList.add(new Item("Spring Day"));
    _itemList.add(new Item("Boy In Luv"));
    _itemList.add(new Item("War of Hormone"));
    _itemList.add(new Item("ON"));
    _itemList.add(new Item("I NEED U"));
    _itemList.add(new Item("Black Swan"));
    _itemList.add(new Item("Life Goes On"));
    _itemList.add(new Item("No More Dream"));
    _itemList.add(new Item("Danger"));
    _itemList.add(new Item("Just one day"));
    _itemList.add(new Item("RUN"));
    _itemList.add(new Item("Make It Right"));
    _itemList.add(new Item("N.O"));
    _itemList.add(new Item("Young Forever"));
    _itemList.add(new Item("Euphoria"));
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
