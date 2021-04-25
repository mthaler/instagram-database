# instagram-database
Instagram like database from SQL and PostgreSQL : The Complete Developer's Guide course on Udemy

## Install PostgreSQL

On Debian Linux, PostgreSQL can be installed with the following command:

```bash
# apt-get install postgresql postgresql-doc
```

Both the default database user and default database are called postgres

## Create a user and database for the system user

By default, Postgres uses a concept called “roles” to handle authentication and authorization.
After installation Postgres is set up to use ident authentication, meaning that it associates Postgres roles with a matching Unix/Linux system account.

Use su to swith to the postgres acount and create a user with the same name as the system user:

```
$ su -
# su -s /bin/bash postgres
postgres@debian:/root$ createuser -s username
```
The -s option grants superuser privileges.

Next we need to create a database for the user:

```bash
postgres@debian:/root$ createdb -O username username
```

Now try to start psql as a normal user:

```bash
$ psql
username=# \q
```

## Create instagram user and database

After setting up a user for the local system user, we no longer need to switch to the postgres account to run postgres commands.
Add an instagram postgres user:

```bash
$ createuser -P
```

This creates an istagram user that is not allowed to create new databases or roles and is not superuser. The -P flag will display a password prompt to set a password for the user.

To create the instagram database, run the follwing command:

```bash
$ createdb -O instagram instagram 
```
