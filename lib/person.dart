class Person {
  String _name;
  String _id;
  String _address;
  String _phoneNo;
  bool _fav=false;

  Person(this._name, this._id, this._address, this._phoneNo);

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }


  String get address => _address;

  set address(String value) {
    _address = value;
  }


  @override
  String toString() {
    return 'Name: $_name\nId: $_id\nAddress: $_address\nPhoneNo: $_phoneNo';
  }

  String get phoneNo => _phoneNo;

  set phoneNo(String value) {
    _phoneNo = value;
  }

  bool get fav => _fav;

  set fav(bool value) {
    _fav = value;
  }
}