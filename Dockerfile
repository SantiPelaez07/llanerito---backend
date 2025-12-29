# Imagen de Java 17 con JDK
FROM eclipse-temurin:17-jdk

# Carpeta de trabajo
WORKDIR /app

# Copiar configuraciones de Maven
COPY .mvn/ .mvn
COPY mvnw pom.xml ./

# Dar permisos para ejecutar mvnw
RUN chmod +x mvnw

# Descargar dependencias antes de copiar el código (optimiza build)
RUN ./mvnw dependency:go-offline

# Copiar el código fuente
COPY src ./src

# Puerto expuesto por Spring Boot
EXPOSE 8080

# Comando que inicia la app
CMD ["./mvnw", "spring-boot:run"]
