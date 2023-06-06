PrimitiveDatatypeDemo2 d1 = new PrimitiveDatatypeDemo2();
d1.printNewDateTime();
d1.printNewTime();
d1.printNewDate();


datetime dt5 = datetime.newInstance(0);
system.debug('dt5 i ' + dt5); //1970-01-01 midnight

long longTime = 4234712323543000l;//milliseconds from 1970 1 Jan midnight
datetime dt55 = datetime.newInstance(longtime);
system.debug('dt55 is ' + dt55);

datetime dt4 = datetime.newInstanceGmt(2021, 11, 200, 24, 15, 50);
system.debug('dt4 is ' + dt4);