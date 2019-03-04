exports = function(payload, response) {
    const mongodb = context.services.get("mongodb-atlas");
    const pictocat = mongodb.db("stitch").collection("pictocat");
    
    var body = EJSON.parse(payload.body.text());
    body.dateInserted = new Date();
    pictocat.insertOne(body)
    .then(result => {
      response.setStatusCode(201);
    });
};