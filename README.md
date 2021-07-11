## JPACRUDProject

### Overview
This is a dynamic web application titled "Famous Chess Matches", designed by David Estrada. This application is a Spring Boot C.R.U.D. (create, read/retrieve, update and delete) application integrated with the Java Persistence API. It centers around chess match data from a local MySQL DBMS, which can be displayed to and manipulated by a user through a web interface.

### Technical Skills Used
* Java 8 and Eclipse IDE
* Spring Boot framework pattern
* ORM (Object-Relation Mapping) Software Development
* MAMP Software & MySQL DBMS
* JPA API & Hibernate Library
* DAO pattern (for CRUD operations)
* HTML & CSS
* DOM manipulation with JavaScript ES6
* Abstraction, Polymorphism, Inheritence, Encapsulation
* JSP Views and JSTL for Dynamic Web Pages

### Spring Boot - JPA Integration
By using Spring Boot, we are able to configure dynamic web applications much easier and faster through auto-configuration, while taking advantage of Spring's prime function--separation of concerns. We can use Spring Boot to integrate with popular technologies and famous libraries such as the Java Persistence API (JPA). Specifically for this project, we utilize JPA's Hibernate library, fully implementing all of JPA's interfaces. We incorporate Hibernate's properties & methods such as Persist to perform basic C.R.U.D. operations in a more automated way through annotations, eliminating the need to provide excess source code.

### How to Run
This program can be run on Eclipse IDE and requires connection to a local host server (preferably Tomcat v8.5), as well as a local database--in our case, we have been using a MySQL DBMS. From the home page, the user can add a chess match to the database, see a list of all the Chess Matches in the database, or use a match's ID to be redirected to another page wherein they can manipulate that individual match's characteristics.

### Lessons Learned
I learned how to properly implement Spring Boot framework to optimize configuration of a dynamic web application by incorporating popular technologies and libraries such as JPA and Hibernate to fully take advantage of its methods & properties, such as EntityManagerFactory and Persist. I became more proficient with writing code within both controller and data accessor classes and troubleshooting mapping to the database: it really solidified in my mind how each controls the functionality of a dynamic application.
