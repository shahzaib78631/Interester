SQL database queries
===================

Queries that are used for the following db.
--

```sql
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
CREATE TABLE usr_profile (usr_id INT, PRIMARY KEY (usr_id), usr_name VARCHAR(30), roll_no INT UNIQUE, usr_dept VARCHAR(15), batch_no VARCHAR(5));
```