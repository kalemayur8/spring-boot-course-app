CREATE TABLE course.university (
	id INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1, INCREMENT BY 1),
	name VARCHAR(200) NOT NULL,
	alpha_two_code varchar(2) NOT NULL,
	country VARCHAR(200) NOT NULL,
	domain VARCHAR(200) NOT NULL,
	web_page VARCHAR(200) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE course.course (
	id INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1, INCREMENT BY 1),
	name VARCHAR(200) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE course.student (
	id INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1, INCREMENT BY 1),
	name VARCHAR(200) NOT NULL,
	address VARCHAR(200) NOT NULL,
	city VARCHAR(200) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE course.university_course (
	id INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1, INCREMENT BY 1),
	university INT NOT NULL,
	course INT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (university) REFERENCES university(ID),
	FOREIGN KEY (course) REFERENCES course(ID)
);

CREATE TABLE course.student_course (
	id INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1, INCREMENT BY 1),
	course INT NULL,
	student INT NULL,
	university INT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (student) REFERENCES student(ID),
	FOREIGN KEY (university) REFERENCES university(ID),
	FOREIGN KEY (course) REFERENCES course(ID)
);