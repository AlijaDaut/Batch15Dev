AccountsBatch ab = new accountsBatch();
database.executeBatch(ab, 30);

//database.executeBatch returns JOB ID
//5 is the soze of records
//batch class new instance
DepartmentsBatch db = new DepartmentsBatch();
Id JobId = Database.executeBatch(db, 5);
system.debug('JOB ID is ' + JobId);