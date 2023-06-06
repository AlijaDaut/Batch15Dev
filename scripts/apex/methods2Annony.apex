MethodsDemo2 m2 = new MethodsDemo2();
boolean r1 = m2.nameContainsA('Christina');
system.debug('Christina contains a? ' + r1);

//a = b+c;
//system.debug(a);
//system.debug(b+c); isto dakle
system.debug('Vicky contains a? ' + m2.nameContainsA('Vicky'));

boolean r2 = m2.nameContainsA('Barcelona');
system.debug('Barcelona contains a? ' + m2.nameContainsA('Barcelona'));
system.debug('Barcelona contains a? ' + r2);

