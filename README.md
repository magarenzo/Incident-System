# incident-system
Track incidents and interface with your database through a webpage

---

[*history.php*](https://github.com/magarenzo/incident-system/blob/master/history.php) is a webpage in which a user can enter an incident ID number and a history report for that incident is formatted and printed to the screen. Pressing submit activates a query which has been stored in a view.

You can see the [tables](https://github.com/magarenzo/incident-system/blob/master/tables.sql) and [sample data](https://github.com/magarenzo/incident-system/blob/master/data.sql) in the database that the program queries the report from. You can also view the [schema](https://github.com/magarenzo/incident-system/blob/master/diagrams/scehma.PNG) for this project.

The PDF files in the [diagrams directory](https://github.com/magarenzo/incident-system/tree/master/diagrams) are based off of the given [case study](https://github.com/magarenzo/incident-system/blob/master/case-study.PNG), though the program does not fully represent what they system should be able to do.

The diagrams are as follows:

* [Use Case Diagram](https://github.com/magarenzo/incident-system/blob/master/diagrams/UCD.pdf)

* [Data Flow Diagram](https://github.com/magarenzo/incident-system/blob/master/diagrams/DFD.pdf)

* [Entity Relationship Diagram](https://github.com/magarenzo/incident-system/blob/master/diagrams/ERD.pdf)

---

<h3>Output:</h3>

Screenshots of the webpage doing each of its functions.

---

<h3>Necessary Installations:</h3>

* [`psql`](https://help.ubuntu.com/lts/serverguide/postgresql.html)

---

<h3>To Do:</h3>

* Fix loops to stop columns from printing twice

* Add more interface options

---

This was originally created as a final project in CSC443 (Database Management Systems). It has undergone changes since then.
