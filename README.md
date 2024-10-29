compose-postgrest
=================

[Postgres](https://www.postgresql.org/), [PostgREST](https://github.com/begriffs/postgrest), and [Swagger UI](https://github.com/swagger-api/swagger-ui) conveniently wrapped up with docker-compose.

Place SQL into the `initdb` folder, get REST! 

Usage
-----

**Start the containers**

`docker-compose up -d`

**Tearing down the containers**

`docker-compose down --remove-orphans -v`


**Create Table**
`docker exec -it postgrest-db psql -U postgres -d postgres -f /docker-entrypoint-initdb.d/laserproof.sql`

**/bin/bash create-anon-role.sh**
`docker exec -it postgrest-db bash`

**copy command in create-anon-role.sh and paste to execute psql**


**Postgrest**

Located at [http://localhost:3000](http://localhost:3000)

Try things like:
* [http://localhost:3000/card_info](http://localhost:3000/card_info)
* [http://localhost:3000/card_info?id=eq.1](http://localhost:3000/card_info?id=eq.1)

**Swagger UI**

Located at [http://localhost:8080](http://localhost:8080)
