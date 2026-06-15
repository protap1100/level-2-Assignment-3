# Football Ticket Booking System

## Overview

The Football Ticket Booking System is a relational database designed to manage football match ticket reservations. The system allows football fans to purchase tickets for matches while ticket managers oversee match availability and booking records.

This project demonstrates database design concepts including:

* Entity Relationship Diagram (ERD)
* Primary Keys and Foreign Keys
* One-to-Many Relationships
* Referential Integrity
* SQL Table Design

---

## Database Schema

The database consists of three tables:

### 1. Users

Stores information about registered users and ticket managers.

| Field        | Description                    |
| ------------ | ------------------------------ |
| user_id      | Unique user identifier (PK)    |
| full_name    | User's full name               |
| email        | Unique email address           |
| role         | Ticket Manager or Football Fan |
| phone_number | User contact number            |

---

### 2. Matches

Stores information about football matches.

| Field               | Description                  |
| ------------------- | ---------------------------- |
| match_id            | Unique match identifier (PK) |
| fixture             | Competing teams              |
| tournament_category | League or tournament name    |
| base_ticket_price   | Base ticket price            |
| match_status        | Match availability status    |

---

### 3. Bookings

Stores ticket booking transactions.

| Field          | Description                    |
| -------------- | ------------------------------ |
| booking_id     | Unique booking identifier (PK) |
| user_id        | References Users table (FK)    |
| match_id       | References Matches table (FK)  |
| seat_number    | Reserved seat number           |
| payment_status | Booking payment status         |
| total_cost     | Total booking cost             |

---

## Relationships

### One-to-Many

* One User can make many Bookings.
* One Match can have many Bookings.

### Many-to-One

* Many Bookings can belong to one Match.

### Logical Relationship

* Each booking links exactly one User and one Match.

---

## Business Rules

* One user can make multiple bookings.
* One match can have multiple bookings.
* Each booking belongs to one user and one match.
* Payment status tracks booking progress.
* Match status tracks ticket availability.

---

## ERD

The Entity Relationship Diagram (ERD) includes:

* Primary Keys (PK)
* Foreign Keys (FK)
* Crow's Foot Notation
* Relationship Cardinality
* Status Fields

---

## Technologies Used

* MySQL
* Draw.io / Lucidchart
* SQL

---

## Author

Prepared as part of a Database Management System (DBMS) assignment on Football Ticket Booking System design.
