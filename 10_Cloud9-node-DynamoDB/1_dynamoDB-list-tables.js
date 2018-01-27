var AWS = require('aws-sdk');
AWS.config.update({region:'us-east-1'});

ddb = new AWS.DynamoDB({apiVersion: '2012-10-08'});

ddb.listTables({Limit: 10}, function(err, data) {
  if (err) {
    console.log("Error", err.code);
  } else {
    console.log("Table names are ", data.TableNames);
  }
});