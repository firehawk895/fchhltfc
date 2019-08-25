Run using `node --experimental-modules index.mjs`

- Using text type for all the data fields because there isn't much of a difference:
  Also assuming that application level will enforce standard constraints. https://stackoverflow.com/questions/4848964/postgresql-difference-between-text-and-varchar-character-varying

- As clarified in the email, we don't need complex operations on address and hence it is being stored denormalized. Otherwise we can split them into tables and use PostGIS to store the lat and long information. Using jsonb over json as described in section 8.14 of https://www.postgresql.org/docs/current/datatype-json.html because of efficiency.
