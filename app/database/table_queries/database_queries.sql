CREATE TABLE usr (usr_id INT AUTO_INCREMENT, PRIMARY KEY (usr_id), 
rollnumber VARCHAR(8) NOT NULL UNIQUE, pass VARCHAR(20) NOT NULL, 
created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE roles (role_id INT, PRIMARY KEY (role_id), role VARCHAR(10)
);

CREATE TABLE usr_access (usr_id INT, FOREIGN KEY (usr_id) REFERENCES usr (usr_id),
role_id INT, FOREIGN KEY (role_id) REFERENCES roles (role_id)
);

CREATE TABLE social_id (usr_id INT, FOREIGN KEY (usr_id) REFERENCES usr(usr_id),
fb VARCHAR(30), linked_in VARCHAR(30), github VARCHAR(30)
);

CREATE TABLE usr_lang (usr_id INT, FOREIGN KEY (usr_id) REFERENCES usr(usr_id),
lang VARCHAR(20)
);
CREATE TABLE usr_tech (usr_id INT, FOREIGN KEY (usr_id) REFERENCES usr(usr_id),
tech VARCHAR(20)
);
CREATE TABLE usr_sports (usr_id INT, FOREIGN KEY (usr_id) REFERENCES usr(usr_id),
sports VARCHAR(20)
);

#CREATE TABLE tt (id int, created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
#    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
#);

ALTER TABLE usr ADD CONSTRAINT id_pk PRIMARY KEY (usr_id);
ALTER TABLE usr_access ADD COLUMN (id INT NOT NULL);
ALTER TABLE usr_access ADD CONSTRAINT id_fk FOREIGN KEY (id) REFERENCES usr (id);
ALTER TABLE usr_access DROP FOREIGN KEY id_fk;

DROP TABLE usr_access;
TRUNCATE TABLE usr;

DESCRIBE usr;
SELECT * FROM usr_access;
INSERT INTO usr(rollnumber, pass) VALUE('f16sw02',123);
INSERT INTO usr_access(usr_id,rollnumber,pass) VALUE(2,'f16sw02',321);
SELECT * FROM usr;
#shouldn't we add foreign keys to all columns of usr_access table,  so that wrong values can't be added to any of them.
#meybe not, because we'll add these values on both tables when user registers, and these will be retrieved when user
#logs in.

CREATE TABLE timett (tt TIMESTAMP);
SELECT * FROM timett;
INSERT INTO tt(id) VALUE (1);
SELECT * FROM tt;
SELECT MONTHNAME(created_at) FROM tt;



#There may be situations where you just want to obtain a part of date or time. In MySQL you can use the 
#functions specifically designed for extracting part of a temporal value, such as YEAR(), MONTH(), 
#DAYOFMONTH(), MONTHNAME(), DAYNAME(), HOUR(), MINUTE(), SECOND(), etc.