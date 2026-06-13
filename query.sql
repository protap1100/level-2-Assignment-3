-- DROP TABLES IF THEY ALREADY EXIST
DROP TABLE IF EXISTS Bookings;

DROP TABLE IF EXISTS Matches;

DROP TABLE IF EXISTS Users;

-- 1. CREATE USERS TABLE
CREATE TABLE
    Users (
        user_id INT PRIMARY KEY,
        full_name VARCHAR(100) NOT NULL,
        email VARCHAR(100) UNIQUE NOT NULL,
        role VARCHAR(30) NOT NULL CHECK (role IN ('Football Fan', 'Ticket Manager')),
        phone_number VARCHAR(20)
    );

-- 2. Matches table
CREATE TABLE
    Matches (
        match_id INT PRIMARY KEY,
        fixture VARCHAR(100) NOT NULL,
        tournament_category VARCHAR(50) NOT NULL,
        base_ticket_price DECIMAL(10, 2) NOT NULL CHECK (base_ticket_price >= 0),
        match_status VARCHAR(30) NOT NULL CHECK (
            match_status IN (
                'Available',
                'Selling Fast',
                'Sold Out',
                'Postponed'
            )
        )
    );

-- 3. Booking table
CREATE TABLE
    Bookings (
        booking_id INT PRIMARY KEY,
        user_id INT NOT NULL,
        match_id INT NOT NULL,
        seat_number VARCHAR(10) NOT NULL,
        payment_status VARCHAR(20) NOT NULL CHECK (
            payment_status IN ('Pending', 'Confirmed', 'Cancelled', 'Refunded')
        ),
        total_cost DECIMAL(10, 2) CHECK (total_cost >= 0),
        FOREIGN KEY (user_id) REFERENCES Users (user_id),
        FOREIGN KEY (match_id) REFERENCES Matches (match_id),
        UNIQUE (match_id, seat_number)
    );