//invoke = execute = run = fire = called
//Carrr newCar = new Carrr(); //new object OR instance of a class
//newCar.details();
//system.debug('-----------');
//carrr ford = new carrr();
//ford.details();

carrr bmw = new Carrr('BMW X3');
bmw.details();

carrr ford = new carrr();
ford.details();

//when we have parameterized constructors
//and we DO NOT have parameterless constructor.

carrr bmw2 = new carrr('BMW X3', 'ABC10001', 'Black', 2020, 45000);
bmw2.details();
//bmw2.details();

carrr ford2 = new carrr('Ford mustang', 'abbe10001', 'red', 2023, 55000.50);

string ford2name = ford2.name;
string ford2color = ford2.color;
system.debug('ford 2 name and color are ' + ford2name + '' + ford2color);
system.debug('----------');
ford2.name = 'Ford focus';
ford2.color = 'Silver';
ford2.details();
//bmw2.details();
