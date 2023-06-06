SetDemo.citySet();
SetDemo.randomIntegerSet();
SetDemo.setFromList();
SetDemo.upperCaseSet();


set<boolean> bs = new set<boolean>();
bs.add(true);
bs.add(false);
bs.add(null);
bs.add(true);
bs.add(false);
bs.add(null);
system.debug(bs);

list<integer> l = new list<integer>();
boolean check = l.isEmpty();

string s = '';
s.toUpperCase();

set<string> colors = new set<string>{'red', 'black', 'white','gray','green' };
set<string> colorsInCaps = setDemo.upperCaseSet(colors);
system.debug(colorsInCaps);