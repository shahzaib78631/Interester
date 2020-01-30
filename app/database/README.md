SQL database queries
===================

Queries that are used for the following db.
--
Database in this folder is not updated with these queries.
--

```sql
CREATE TABLE usr (usr_id INT AUTO_INCREMENT, PRIMARY KEY (usr_id),first_name VARCHAR(10), last_name VARCHAR(10), email VARCHAR(30), rollnumber VARCHAR(8) NOT NULL UNIQUE, pass VARCHAR(20) NOT NULL, 
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
CREATE TABLE usr_sports (usr_id INT, FOREIGN KEY (usr_id) REFERENCES usr(usr_id), sports VARCHAR(20)
);

#Queries for question and answers.
CREATE TABLE question_table (question_id INT AUTO_INCREMENT, PRIMARY KEY (question_id), question TEXT);
CREATE TABLE usr_ans_table (usr_id INT, FOREIGN KEY (usr_id) REFERENCES usr (usr_id), question_id INT, FOREIGN KEY (question_id) REFERENCES question_table(question_id), answer_id INT);
```