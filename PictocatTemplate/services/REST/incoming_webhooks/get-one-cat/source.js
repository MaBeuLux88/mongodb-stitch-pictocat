exports = function(payload) {
  const mongodb = context.services.get("mongodb-atlas");
  const pictocat = mongodb.db("stitch").collection("pictocat");
  return pictocat.findOne();
};