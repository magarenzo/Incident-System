--
-- incident
--
CREATE TABLE incident (
	incident_id	INTEGER,
	incident_state	CHAR(1),
	date_created	DATE,
	PRIMARY KEY (incident_id),
	CHECK (incident_state IN ('O', 'C', 'S'))
);

--
-- incident_type
--
CREATE TABLE incident_type (
	incident_type_id	INTEGER,
	type_body		VARCHAR(40),
	incident_id		INTEGER,
	PRIMARY KEY (incident_type_id),
	FOREIGN KEY (incident_id) REFERENCES incident (incident_id)
);

--
-- comment
--
CREATE TABLE comment (
	comment_id	INTEGER,
	handler_name	VARCHAR(40),
	date_created	DATE,
	incident_id	INTEGER		unique,
	PRIMARY KEY (comment_id),
	FOREIGN KEY (incident_id) REFERENCES incident (incident_id)
);

--
-- comment_text
--
CREATE TABLE comment_text (
	comment_text_id		INTEGER,
	comment_body		VARCHAR(40),
	incident_id		INTEGER,
	PRIMARY KEY (comment_text_id),
	FOREIGN KEY (incident_id) REFERENCES comment (incident_id)
);

--
-- ip_address
--
CREATE TABLE ip_address (
	address_id	INET,
	incident_id	INTEGER,
	PRIMARY KEY (address_id, incident_id),
	FOREIGN KEY (incident_id) REFERENCES incident (incident_id)
);

--
-- persons
--
CREATE TABLE persons (
	person_id	INTEGER,
	last_name	VARCHAR(40),
	first_name	VARCHAR(40),
	job_title	VARCHAR(40),
	email_address	VARCHAR(40),
	PRIMARY KEY (person_id)
);

--
-- incident_persons
--
CREATE TABLE incident_persons (
	incident_id	INTEGER,
	person_id	INTEGER,
	reason_body	VARCHAR(40),
	PRIMARY KEY (incident_id, person_id),
	FOREIGN KEY (person_id) REFERENCES persons (person_id),
	FOREIGN KEY (incident_id) REFERENCES incident (incident_id)
);