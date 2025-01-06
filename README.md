# JPACRUDProject

## Overview 
This website is used as a log/tracker for a user to keep track of all the Crumbl cookies they have tried. The user is able to create, read, update and/or delete cookies from the database. On the home page, the user will view a table listing all the cookie entries in the database which include the following details: cookie name, image, description, rating and number of calories. On the homepage, the user can add a cookie, delete a cookie, or search for a cookie using the cookie id. When a user navigates to a page other than the home page, a return to home button is provided on the new page. When the user searches by cookie id, they will be navigated to a new page listing all the cookie details, where they can delete or update the cookie.

## Technologies Used
* Java
* Spring Boot (Controller, DAO, & DAOImpl, JSPs)
* MySQLWorkBench
* Gradle
* HTML/CSS
* Bootstrap

## Lessons learned
I felt more comfortable working with the controller, DOAImp and JSPs versus the previous project but I still struggled with the same issue of figuring out the Update method and getting the cookie id/primary key then carrying it over to another JSP to edit it. I kept getting an "org.springframework.web.bind.MethodArgumentNotValidException" but I was not able to figure out how to overcome/correct it which was very frustrating. I also ended up removing a field (the date of the last time the user tried the cookie) due to struggling with the formating. I feel a lot more familiar with JSPs and CSS styling, which was fun to explore working on the front end of the project.