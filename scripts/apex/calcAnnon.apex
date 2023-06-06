Calculator calc = new Calculator();
date bdt = date.newInstance(1995, 18, 05);
boolean bdleapCheck = calc.leapYearCheck(bdt);
system.debug('born on leap year? ' + bdleapCheck);



//integer sum1 = calc.add(10, 15);
//system.debug('sum1 is ' + sum1);

//integer x = 5;
//integer y = -25;
//integer sum2 = calc.add(x, y);
//system.debug('sum2 is ' + sum2);

//calc.add(10,15);//add(integer a, integer b) --> it will automatically recognize from datatype

//calc.add(10.10,15.15);//add(decimal a, decimal b)

integer x = calc.add(10,15,55);
system.debug('x is ' + x);