# Incident System

Track incidents and interface with your database through a webpage

## Overview

`history.php` is a webpage in which a user can enter an incident identification number and a history report for that incident is formatted and printed to the screen. Pressing submit completes the query and uses a view which has been granted `select` access to `from www-data`

You can see the [tables](src/sql/tables.sql) and [sample data](src/sql/data.sql) in the database that the program queries the report from. You can also view the [schema](https://github.com/magarenzo/incident-system/blob/master/screenshots/scehma.PNG) for this project

These diagrams are based off of the given [case study](media/case-study.PNG), though the program does not fully represent what the system is entailed to be able to do, and are as follows:

* [Use Case Diagram](media/UCD.pdf)

* [Data Flow Diagram](media/DFD.pdf)

* [Entity Relationship Diagram](media/ERD.pdf)

### Output

#### Initial Homepage

![](media/homepage.PNG)

#### Submitted '2'

![](media/report.PNG)

## Dependency

[`psql`](https://help.ubuntu.com/lts/serverguide/postgresql.html)

## TODO

* Fix loops to stop data from printing twice

* Add more interface options

## Owner

[Michael A. Agarenzo](https://magarenzo.com)

This was originally created as a final project in CSC443 (Database Management Systems) and it has undergone some changes since then
