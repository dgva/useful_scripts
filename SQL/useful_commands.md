# SQL stuff

### Create password
In Linux, there is no initial configuration prompt, like in Windows. To properly use the DB: <br>
Enter the `postgres` user, and enter in the `psql` prompt:
```
sudo -i -u postgres
psql
```
This will enter in the `postgres` DB, with user `postgres`. Change the password with:
```
\password
```
Then, back in the `postgres` user, create new role with:
```
createuser --interactive
``` 
If the user has the same name as the machine user, then it is possible to connect to any local DB directly from the normal prompt, identifying only the DB:
```
psql postgres
```
This will connect the current user to the DB `postgres`

### Connect to database
Connects to 'superuser'
```
psql -U postgres
```
Connection to external server (`HOST`) and DB
```
psql -h HOST -U USERNAME -d DATABASE
```

### Connnect to another database, inside the server
```
\c DATABASE
```

### How to know connection info
```
\conninfo
```

```
\c
```

### List active schemas (all schemas)
```
\dn (\dn *.*)
```

### Lists all databases in the server
```
\l
```

### List tables from active schema (all tables)
```
\dt (\dt *.*)
```

### List users (roles, under the PostgreSQL badge)
```
\du
```

### Change schemas. Public schema is always default!!!
Shows current schemas. Similar to `\dn`
```
SHOW search_path;
```
Change active schema. More than one, separate with commas
```
SET search_path TO SCHEMA1, SCHEMA2; 
```

### Start and stop Postgresql server
```
sudo service postgresql start
sudo service postgresql stop
```

### Disconnect all users from a database
```
Queries pg_stat_activity of a specific database for it's users (each one has a .pid process) and then orders their termination (pg_terminate_backend)
SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'DATABASE'
  AND pid <> pg_backend_pid();
```

### Insert raster data (use in normal cmd, maintain "double-quotes" where necessary)
```
raster2pgsql -I -C -s "código EPSG" "endereço no computador do raster com extensão" nome_do_esquema_de_destino.nome_da_tabela_raster_a_criar | psql -U user -d nome_da_base_dados_destino;
```

### Create database
```
CREATE DATABASE ´DATABASE´;
```

### Activate PostGIS (inside database)
```
CREATE EXTENSION IF NOT EXISTS plpgsql;
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_raster; -- OPTIONAL
CREATE EXTENSION postgis_topology; -- OPTIONAL
```