--
-- first sample incident
--
INSERT INTO incident (incident_id, incident_state, date_created)
VALUES (
001, 'O', TO_DATE('11/28/2017', 'MM/DD/YYYY')
);

INSERT INTO incident_type (incident_type_id, type_body, incident_id)
VALUES (
1, 'Open ticket, still investigating.', 001
);

INSERT INTO comment (comment_id, handler_name, date_created, incident_id)
VALUES (
1, 'Main Officer', TO_DATE('11/28/2017', 'MM/DD/YYYY'), 001
);

INSERT INTO comment_text (comment_text_id, comment_body, incident_id)
VALUES (
1, 'Ticket created.', 001
);

INSERT INTO ip_address (address_id, incident_id)
VALUES (
'111.222.222.90', 001
);

INSERT INTO persons (person_id, last_name, first_name, job_title, email_address)
VALUES (
3, 'Smith', 'John', 'Intern', 'jsmith@domain.com'
);

INSERT INTO incident_persons (incident_id, person_id, reason_body)
VALUES (
001, 3, 'Pop-up virus infected his machine.'
);

--
-- second sample incident
--
INSERT INTO incident (incident_id, incident_state, date_created)
VALUES (
002, 'C', TO_DATE('12/02/2017', 'MM/DD/YYYY')
);

INSERT INTO incident_type (incident_type_id, type_body, incident_id)
VALUES (
2, 'Closed ticket, invesitgation finished.', 002
);

INSERT INTO comment (comment_id, handler_name, date_created, incident_id)
VALUES (
2, 'Main Officer', TO_DATE('12/02/2017', 'MM/DD/YYYY'), 002
);

INSERT INTO comment_text (comment_text_id, comment_body, incident_id)
VALUES (
2, 'Ticket created.', 002
);

INSERT INTO ip_address (address_id, incident_id)
VALUES (
'222.222.222.90', 002
);

INSERT INTO persons (person_id, last_name, first_name, job_title, email_address)
VALUES (
9, 'Doe', 'Jane', 'Secretary', 'jdoe@domain.com'
);

INSERT INTO incident_persons (incident_id, person_id, reason_body)
VALUES (
002, 9, 'Forwarded malware email.'
);

--
-- third sample incident
--
INSERT INTO incident (incident_id, incident_state, date_created)
VALUES (
003, 'S', TO_DATE('12/06/2017', 'MM/DD/YYYY')
);

INSERT INTO incident_type (incident_type_id, type_body, incident_id)
VALUES (
3, 'Stalled ticket, cannot continue.', 003
);

INSERT INTO comment (comment_id, handler_name, date_created, incident_id)
VALUES (
4, 'Main Officer', TO_DATE('12/06/2017', 'MM/DD/YYYY'), 003
);

INSERT INTO comment_text (comment_text_id, comment_body, incident_id)
VALUES (
4, 'Ticket created.', 003
);

INSERT INTO ip_address (address_id, incident_id)
VALUES (
'249.222.222.90', 003
);

INSERT INTO persons (person_id, last_name, first_name, job_title, email_address)
VALUES (
16, 'Williams', 'Michael', 'Janitor', 'jdoe@domain.com'
);

INSERT INTO incident_persons (incident_id, person_id, reason_body)
VALUES (
003, 16, 'Accidentally given root credentials.'
);