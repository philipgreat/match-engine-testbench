# log-service

## 


Add the following file: src/resources/application.properties for external resource like redis and database

```
spring.application.name=testbench-service
server.port=9987
spring.datasource.type=com.zaxxer.hikari.HikariDataSource
teaql.ensureTable=true
teaql.contextClass=com.philipgreat.logservice.CustomUserContext
spring.datasource.driver-class-name=org.postgresql.Driver
spring.datasource.url=jdbc:postgresql://<your-database-host>:<your-database-port>/<your-database-schema>
spring.datasource.username=<your-database-username>
spring.datasource.password=<your-database-password>
spring.data.redis.port=<your-redis-port-like-6379>
```


