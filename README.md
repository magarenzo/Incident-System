# incident-system
Track incidents and interface with your database through a webpage

---

[*history.php*](https://github.com/magarenzo/incident-system/blob/master/history.php) is a webpage in which a user can enter an incident identification number and a history report for that incident is formatted and printed to the screen. Pressing submit completes the query and uses a view which has been granted select access to from www-data.

You can see the [tables](https://github.com/magarenzo/incident-system/blob/master/tables.sql) and [sample data](https://github.com/magarenzo/incident-system/blob/master/data.sql) in the database that the program queries the report from. You can also view the [schema](https://github.com/magarenzo/incident-system/blob/master/diagrams/scehma.PNG) for this project.

The PDF files in the [diagrams directory](https://github.com/magarenzo/incident-system/tree/master/diagrams) are based off of the given [case study](https://github.com/magarenzo/incident-system/blob/master/screenshots/case-study.PNG), though the program does not fully represent what the system is entailed to be able to do.

The diagrams are as follows:

* [Use Case Diagram](https://github.com/magarenzo/incident-system/blob/master/diagrams/UCD.pdf)

* [Data Flow Diagram](https://github.com/magarenzo/incident-system/blob/master/diagrams/DFD.pdf)

* [Entity Relationship Diagram](https://github.com/magarenzo/incident-system/blob/master/diagrams/ERD.pdf)

---

<h3>Output:</h3>

Homepage
![](https://github.com/magarenzo/incident-system/blob/master/screenshots/homepage.PNG)

History Report for Incident ID#2
![](https://github.com/magarenzo/incident-system/blob/master/screenshots/report.PNG)

---

<h3>Necessary Installations:</h3>

* [`psql`](https://help.ubuntu.com/lts/serverguide/postgresql.html)

---

<h3>To Do:</h3>

* Fix loops to stop columns from printing twice

* Add more interface options

---

This was originally created as a final project in CSC443 (Database Management Systems). It has undergone changes since then.
