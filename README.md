### Linux / Mac

Run `docker-compose up` from the project directory.

### Windows

Volume mounting for the postgressql database as defined in docker-compose.yml does not work on Windows systems. Instead, follow these steps to use a modified compose file:

1. Run `docker volume create --name postgres-data -d local` to create a named volume
2. Modify docker-compose.yml to declare the volume and change the *db* service's volumes accordingly (note the indentation):
```
  db:
    image: postgres:10.5-alpine
    restart: always
    volumes:
      - postgres-data:/var/lib/postgresql/data

volumes:
  postgres-data:
    external: true
```

3. Run `docker-compose up`.


