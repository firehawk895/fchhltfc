import get from "axios";
import massive from "massive";

const connection_string =
  "postgres://fchhltfc:vcyFNRGGWwzAIXdQPiTMXcEXz5nYAYLV@satao.db.elephantsql.com:5432/fchhltfc";

var connection = null;

let insert = (tablename, request_url) => {
  return get(request_url)
    .then(response => {
      return connection[tablename].insert(response.data, {
        onConflictUpdate: ["id"]
      });
    })
    .then(results => console.log(results));
};

massive(connection_string)
  .then(db => {
    connection = db;
    return insert("users", "https://jsonplaceholder.typicode.com/users");
  })
  .then(response => {
    return Promise.all([
      insert("posts", "https://jsonplaceholder.typicode.com/posts"),
      insert("albums", "https://jsonplaceholder.typicode.com/albums"),
      insert("todos", "https://jsonplaceholder.typicode.com/todos")
    ]);
  })
  .then(response => {
    return Promise.all([
      insert("comments", "https://jsonplaceholder.typicode.com/comments"),
      insert("photos", "https://jsonplaceholder.typicode.com/photos")
    ]);
  })
  .catch(err => console.log(err));
