class Phone {
  String _brand = ''; // fix 1: starting value
  int _battery = 0; // fix 1: starting value

  Phone(String brand, int battery) {
    _brand = brand;
    _battery = battery;
  }

  int get battery {
    return _battery;
  }

  // fix 4: setter that only accepts 0 to 100
  set battery(int value) {
    if (value >= 0 && value <= 100) {
      _battery = value;
    } else {
      print('Error: battery must be 0 to 100');
    }
  }
}

class SmartPhone extends Phone {
  String _system = '';

  // fix 2: call the parent constructor with super
  SmartPhone(String brand, int battery, String system) : super(brand, battery) {
    _system = system;
  }

  // fix 3: removed @override because Phone has no restart
  void restart() {
    print('Restarting $_system');
  }
}

void main() {
  Phone p = new Phone('Tecno', 50);
  p.battery = 100;
  print(p.battery); // fix 5: no () because battery is a getter
}