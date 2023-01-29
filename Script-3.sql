CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "courses_id" int NOT NULL,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL
);

CREATE TABLE "courses" (
  "id" serial PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" text NOT NULL,
  "level" int NOT null,
  "teacher" varchar NOT NULL
);

CREATE TABLE "course_Video" (
  "id" serial PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar NOT null,
  "course_id" int NOT NULL
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL,
  "level_id" int NOT NULL
);

ALTER TABLE "course_Video" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("level") REFERENCES "categories" ("id");

insert into "categories" (name, level_id) values ('Beginner', 1) 
insert into "categories" (name, level_id) values ('Intermediate', 2 ) 

insert into "courses" (title, description, level, teacher) values ('Programming 1', 'The student will learn the basic knowledge of JS programming', 1 , 'David Benavides' )
insert into "courses" (title, description, level, teacher) values ('JavaScript', 'The student will learn programming structures using matrices', 2, 'Keylan Benavides' )

insert into "course_Video"  (title, url, course_id) values ('Introduction', 'www.ClassUno.com', 1)
insert into "course_Video"  (title, url, course_id) values ('Estructure of Code', 'www.ClassTwo.com', 1)

insert into "course_Video"  (title, url, course_id) values ('First Code', 'www.CodeOne.com', 2)
insert into "course_Video"  (title, url, course_id) values ('Practice Code Js', 'www.CodePractice.com', 2)

insert into "users"  (courses_id, name, email, password, age) values (1, 'Herlan Benavides', 'herlanbenavidesp@gmail.com', 'root', 30)
insert into "users"  (courses_id, name, email, password, age) values (1, 'Martin Benavides', 'martinbenavidesp@gmail.com', 'root', 32)