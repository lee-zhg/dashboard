var ibmdb = require('ibm_db');
/**
  * Insert a new event record
  *
  * Written by Henrik Loeser
  */

function insertData(dsn, no_param) {
 try {
    var date = new Date();
    console.log("Action insertData() was invoked at: " + date.toLocaleString());

    var conn=ibmdb.openSync(dsn);
    // The timestamp value is derived from date and time values passed in
    var data=conn.querySync("insert into SALES(AMOUNT,PERIOD,REGION,SALES_PERSON) values(1100000,'2019Q2','USCentral','Lee'),(1400000,'2019Q2','USEast','Laura');");
    conn.closeSync();
    
    return {result : data};
 } catch (e) {
     return { dberror : e }
 }
}

function main({no_param, __bx_creds: {dashDB:{dsn}}}) {
	return insertData(dsn);
}
