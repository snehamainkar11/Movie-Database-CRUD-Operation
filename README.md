# This project contains code for performing basic CRUD operations on  MOVIE database

* Frontend : JSP
* Backend : Oracle Database
 
# Database Schema
 * CREATE TABLE  "REVIEWER" (	"RID" NUMBER, "RNAME" VARCHAR2(4000), "EMAIL" VARCHAR2(4000))
 * CREATE TABLE  "MOVIE1" (	"MID" NUMBER NOT NULL ENABLE, 	"MNAME" VARCHAR2(4000), 	"GENRES" VARCHAR2(4000), "RELEASE" NUMBER,   "COLLECTION" NUMBER, 	"DIRECTOR" VARCHAR2(4000) )


* NOTE:If somethings went wrong check the Connection String
DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","admin");
Update this base on your localhost settings


