-- These commands create the required database for our Roster App

-- drop database if it exits
drop database roster;


-- create the database;
create database roster;

-- connect to the database. Note: you need to on the cli psql
-- \c roster;

-- now create the main tables.

-- THIS TABLE CREATES THE USERS THAT WILL LOGIN IN
CREATE TABLE users
(
    user_id SERIAL PRIMARY KEY NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    UNIQUE (email)

);

INSERT INTO users
    (email,password)
VALUES
    ('Kaiya@geemail.com', 'password123');
INSERT INTO users
    (email,password)
VALUES
    ('Keon@geemail.com', 'password123');
INSERT INTO users
    (email,password)
VALUES
    ('Makena@geemail.com', 'password123');
INSERT INTO users
    (email,password)
VALUES
    ('Korbin@geemail.com', 'password123');
INSERT INTO users
    (email,password)
VALUES
    ('Skyler@geemail.com', 'password123');
INSERT INTO users
    (email,password)
VALUES
    ('Lindsay@geemail.com', 'password123');
INSERT INTO users
    (email,password)
VALUES
    ('Alejandro@geemail.com', 'password123');
INSERT INTO users
    (email,password)
VALUES
    ('Khalil@geemail.com', 'password123');
INSERT INTO users
    (email,password)
VALUES
    ('Alvin@geemail.com', 'password123');
INSERT INTO users
    (email,password)
VALUES
    ('Porter@geemail.com', 'password123');
INSERT INTO users
    (email,password)
VALUES
    ('Natalee@geemail.com', 'password123');
INSERT INTO users
    (email,password)
VALUES
    ('Allyson@geemail.com', 'password123');
INSERT INTO users
    (email,password)
VALUES
    ('Blank@geemail.com', 'password123');



CREATE TABLE groups
(
    id SERIAL PRIMARY KEY,
    title VARCHAR(40),
    group_duration INTEGER
);

INSERT INTO groups
    (group_role,group_duration)
VALUES
    ('Manager', 6);
INSERT INTO groups
    (group_role,group_duration)
VALUES
    ('Supervisor', 4);
INSERT INTO groups
    (group_role,group_duration)
VALUES
    ('Chef', 4);
INSERT INTO groups
    (group_role,group_duration)
VALUES
    ('Pastry Chef', 4);
INSERT INTO groups
    (group_role,group_duration)
VALUES
    ('Dishwasher', 4);
INSERT INTO groups
    (group_role,group_duration)
VALUES
    ('Sandwich Artist', 3);
INSERT INTO groups
    (group_role,group_duration)
VALUES
    ('Bar Tender', 4);
INSERT INTO groups
    (group_role,group_duration)
VALUES
    ('Cocktail maker', 4);
INSERT INTO groups
    (group_role,group_duration)
VALUES
    ('Kitchen Hand', 3);
INSERT INTO groups
    (group_role,group_duration)
VALUES
    ('Waiter', 3);
INSERT INTO groups
    (group_role,group_duration)
VALUES
    ('Waitress', 3);



CREATE TABLE staff
(
    staff_id SERIAL PRIMARY KEY NOT NULL,
    username VARCHAR(20) NOT NULL,
    firstname VARCHAR(20) NOT NULL,
    lastname VARCHAR(20) NOT NULL,
    address VARCHAR(50),
    city VARCHAR(20),
    state VARCHAR(3),
    postcode INTEGER,
    picture_url VARCHAR(100),
    notes VARCHAR(200),
    email VARCHAR(50),
    is_active BOOLEAN,
    phone_number INTEGER,
    user_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users (user_id)

);

INSERT INTO staff
    (username,firstname,lastname,address,city,state,postcode,picture_url,notes,email,is_active,phone_number,user_id)
VALUES
    ('KKrueger', 'Kaiya', 'Krueger', '1 Smith St', 'Melbourne', 'VIC', 3000, 'https://api.adorable.io/avatars/285/abott@adorable.png', 'Great Worker', 'Kaiya@geemail.com', TRUE, 1010101010, 1);
INSERT INTO staff
    (username,firstname,lastname,address,city,state,postcode,picture_url,notes,email,is_active,phone_number,user_id)
VALUES
    ('KSoto', 'Keon', 'Soto', '2 Smith St', 'Frankston Sth', 'VIC', 3199, 'https://api.adorable.io/avatars/285/abott@adorable.png', 'Works well', 'Keon@geemail.com', TRUE, 1001002000, 2);
INSERT INTO staff
    (username,firstname,lastname,address,city,state,postcode,picture_url,notes,email,is_active,phone_number,user_id)
VALUES
    ('MHenson', 'Makena', 'Henson', '3 Smith St', 'Mt Eliza', 'VIC', 3930, 'https://api.adorable.io/avatars/285/abott@adorable.png', 'Easy going', 'Makena@geemail.com', TRUE, 1212121212, 3);
INSERT INTO staff
    (username,firstname,lastname,address,city,state,postcode,picture_url,notes,email,is_active,phone_number,user_id)
VALUES
    ('KDavidson', 'Korbin', 'Davidson', '4 Smith St', 'Melbourne', 'VIC', 3000, 'https://api.adorable.io/avatars/285/abott@adorable.png', 'Friendly', 'Korbin@geemail.com', TRUE, 1321321321, 4);
INSERT INTO staff
    (username,firstname,lastname,address,city,state,postcode,picture_url,notes,email,is_active,phone_number,user_id)
VALUES
    ('SNicholson', 'Skyler', 'Nicholson', '5 Smith St', 'Mornington', 'VIC', 3931, 'https://api.adorable.io/avatars/285/abott@adorable.png', 'Great Worker', 'Skyler@geemail.com', TRUE, 1221122112, 5);
INSERT INTO staff
    (username,firstname,lastname,address,city,state,postcode,picture_url,notes,email,is_active,phone_number,user_id)
VALUES
    ('LSellers', 'Lindsay', 'Sellers', '6 Smith St', 'Melbourne', 'VIC', 3000, 'https://api.adorable.io/avatars/285/abott@adorable.png', 'Works well', 'Lindsay@geemail.com', TRUE, 1234432112, 6);
INSERT INTO staff
    (username,firstname,lastname,address,city,state,postcode,picture_url,notes,email,is_active,phone_number,user_id)
VALUES
    ('ANichols', 'Alejandro', 'Nichols', '7 Smith St', 'Melbourne', 'VIC', 3000, 'https://api.adorable.io/avatars/285/abott@adorable.png', 'Easy going', 'Alejandro@geemail.com', TRUE, 1222222222, 7);
INSERT INTO staff
    (username,firstname,lastname,address,city,state,postcode,picture_url,notes,email,is_active,phone_number,user_id)
VALUES
    ('KJackson', 'Khalil', 'Jackson', '8 Smith St', 'Glen Waverley', 'VIC', 3150, 'https://api.adorable.io/avatars/285/abott@adorable.png', 'Friendly', 'Khalil@geemail.com', TRUE, 1000100000, 8);
INSERT INTO staff
    (username,firstname,lastname,address,city,state,postcode,picture_url,notes,email,is_active,phone_number,user_id)
VALUES
    ('AMoody', 'Alvin', 'Moody', '9 Smith St', 'Frankston Sth', 'VIC', 3199, 'https://api.adorable.io/avatars/285/abott@adorable.png', 'Great Worker', 'Alvin@geemail.com', TRUE, 1324343220, 9);
INSERT INTO staff
    (username,firstname,lastname,address,city,state,postcode,picture_url,notes,email,is_active,phone_number,user_id)
VALUES
    ('PBonilla', 'Porter', 'Bonilla', '10 Smith St', 'Mt Eliza', 'VIC', 3930, 'https://api.adorable.io/avatars/285/abott@adorable.png', 'Works well', 'Porter@geemail.com', TRUE, 1555555555, 10);
INSERT INTO staff
    (username,firstname,lastname,address,city,state,postcode,picture_url,notes,email,is_active,phone_number,user_id)
VALUES
    ('NBonilla', 'Natalee', 'Bonilla', '11 Smith St', 'Essendon', 'VIC', 3040, 'https://api.adorable.io/avatars/285/abott@adorable.png', 'Easy going', 'Natalee@geemail.com', TRUE, 1234565430, 11);
INSERT INTO staff
    (username,firstname,lastname,address,city,state,postcode,picture_url,notes,email,is_active,phone_number,user_id)
VALUES
    ('AHarding', 'Allyson', 'Harding', '12 Smith St', 'Essendon', 'VIC', 3040, 'https://api.adorable.io/avatars/285/abott@adorable.png', 'Friendly', 'Allyson@geemail.com', TRUE, 1000666660, 12);
INSERT INTO staff
    (username,firstname,lastname,address,city,state,postcode,picture_url,notes,email,is_active,phone_number,user_id)
VALUES
    ('Bblank', 'Blank', 'Blank', 'Blank', 'Blank', 'VIC', 3000, 'https://api.adorable.io/avatars/285/abott@adorable.png', 'Blank', 'Blank@geemail.com', TRUE, 1000000001, 13);

CREATE TABLE stafftogroups
(
    staff_member_id INTEGER,
    staff_role_id INTEGER,
    PRIMARY KEY (staff_member_id, staff_role_id),
    FOREIGN KEY (staff_member_id) REFERENCES staff(staff_id),
    FOREIGN KEY (staff_role_id) REFERENCES groups(group_id)

);

INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (1, 1);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (1, 2);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (1, 3);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (2, 3);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (2, 4);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (3, 4);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (3, 5);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (4, 5);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (5, 5);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (6, 4);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (6, 5);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (7, 5);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (7, 6);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (7, 7);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (8, 6);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (9, 7);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (10, 7);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (10, 9);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (10, 1);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (10, 11);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (11, 7);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (11, 10);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (12, 7);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (12, 2);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (13, 1);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (13, 2);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (13, 3);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (13, 4);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (13, 5);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (13, 6);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (13, 7);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (13, 8);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (13, 9);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (13, 10);
INSERT INTO stafftogroups
    (staff_member_id,staff_role_id)
VALUES
    (13, 11);


-- select staff_member_id,  staff_role_id, title, group_duration, firstname from stafftogroups, staff, groups  where staff.staff_id = stafftogroups.staff_member_id and groups.group_id = stafftogroups.staff_role_id;


CREATE TABLE publicholidays
(
    phol_id SERIAL PRIMARY KEY,
    phol_state VARCHAR(3) NOT NULL,
    phol_date DATE NOT NULL,
    phol_name VARCHAR(100)
);

INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('na', '2000-01-01', 'N/a');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('act', '2020-01-01', 'New Years Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('act', '2020-01-27', 'Australia Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('act', '2020-03-09', 'Canberra Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('act', '2020-04-10', 'Good Friday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('act', '2020-04-11', 'Easter Saturday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('act', '2020-04-12', 'Easter Sunday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('act', '2020-04-13', 'Easter Monday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('act', '2020-04-25', 'Anzac Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('act', '2020-04-27', 'Declared Public Holiday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('act', '2020-06-01', 'Reconciliation Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('act', '2020-06-08', 'Queens Birthday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('act', '2020-10-05', 'Labour Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('act', '2020-12-25', 'Christmas Day ');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('act', '2020-12-26', 'Boxing Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('act', '2020-12-28', 'Boxing Day (additional day)');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nsw', '2020-01-01', 'New Years Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nsw', '2020-01-27', 'Australia Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nsw', '2020-04-10', 'Good Friday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nsw', '2020-04-11', 'Easter Saturday - the Saturday following Good Friday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nsw', '2020-04-12', 'Easter Sunday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nsw', '2020-04-13', 'Easter Monday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nsw', '2020-04-25', 'Anzac Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nsw', '2020-06-08', 'Queens Birthday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nsw', '2020-08-03', 'Bank Holiday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nsw', '2020-10-05', 'Labour Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nsw', '2020-12-25', 'Christmas Day ');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nsw', '2020-12-26', 'Boxing Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nsw', '2020-12-28', 'Boxing Day (Additional day)');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nt', '2020-01-01', 'New Years Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nt', '2020-01-27', 'Australia Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nt', '2020-04-10', 'Good Friday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nt', '2020-04-11', 'Easter Saturday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nt', '2020-04-13', 'Easter Monday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nt', '2020-04-25', 'Anzac Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nt', '2020-05-04', 'May Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nt', '2020-06-08', 'Queens Birthday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nt', '2020-08-03', 'Picnic Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nt', '2020-12-24', 'Christmas Eve');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nt', '2020-12-25', 'Christmas Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nt', '2020-12-28', 'Boxing Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('nt', '2020-12-31', 'New Years Eve');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('qld', '2020-01-01', 'New Years Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('qld', '2020-01-27', 'Australia Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('qld', '2020-04-10', 'Good Friday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('qld', '2020-04-11', 'The day after Good Friday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('qld', '2020-04-12', 'Easter Sunday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('qld', '2020-04-13', 'Easter Monday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('qld', '2020-04-25', 'Anzac Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('qld', '2020-05-04', 'Labour Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('qld', '2020-10-05', 'Queens Birthday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('qld', '2020-12-24', 'Christmas Eve');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('qld', '2020-12-25', 'Christmas Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('qld', '2020-12-26', 'Boxing Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('qld', '2020-12-28', 'Boxing Day (Additional day)');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('sa', '2020-01-01', 'New Years Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('sa', '2020-01-26', 'Australia Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('sa', '2020-01-27', 'Australia Day (Additional day)');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('sa', '2020-03-09', 'Adelaide Cup Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('sa', '2020-04-10', 'Good Friday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('sa', '2020-04-11', 'Easter Saturday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('sa', '2020-04-13', 'Easter Monday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('sa', '2020-04-25', 'Anzac Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('sa', '2020-06-08', 'Queens Birthday/Volunteers Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('sa', '2020-10-05', 'Labour Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('sa', '2020-12-24', 'Christmas Eve');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('sa', '2020-12-25', 'Christmas Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('sa', '2020-12-28', 'Boxing/Proclamation Day ');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('sa', '2020-12-31', 'New Years Eve');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('tas', '2020-01-01', 'New Years Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('tas', '2020-01-27', 'Australia Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('tas', '2020-03-09', 'Eight Hours Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('tas', '2020-04-10', 'Good Friday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('tas', '2020-04-13', 'Easter Monday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('tas', '2020-04-14', 'Easter Tuesday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('tas', '2020-04-25', 'Anzac Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('tas', '2020-06-08', 'Queens Birthday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('tas', '2020-12-25', 'Christmas Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('tas', '2020-12-28', 'Boxing Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('vic', '2020-01-01', 'New Years Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('vic', '2020-01-27', 'Australia Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('vic', '2020-03-09', 'Labour Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('vic', '2020-04-10', 'Good Friday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('vic', '2020-04-11', 'Saturday before Easter Sunday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('vic', '2020-04-12', 'Easter Sunday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('vic', '2020-04-13', 'Easter Monday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('vic', '2020-04-25', 'Anzac Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('vic', '2020-06-08', 'Queens Birthday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('vic', '2020-11-03', 'Melbourne Cup');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('vic', '2020-12-25', 'Christmas Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('vic', '2020-12-26', 'Boxing Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('vic', '2020-12-28', 'Boxing Day (Additional day)');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('wa', '2020-01-01', 'New Years Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('wa', '2020-01-27', 'Australia Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('wa', '2020-03-02', 'Labour Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('wa', '2020-04-10', 'Good Friday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('wa', '2020-04-13', 'Easter Monday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('wa', '2020-04-25', 'Anzac Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('wa', '2020-04-27', 'Anzac Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('wa', '2020-06-01', 'Western Australia Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('wa', '2020-09-28', 'Queens Birthday');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('wa', '2020-12-25', 'Christmas Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('wa', '2020-12-26', 'Boxing Day');
INSERT INTO publicholidays
    (phol_state,phol_date,phol_name)
VALUES
    ('wa', '2020-12-28', 'Boxing Day (Additional day)');


CREATE TABLE shifts
(
    shift_id SERIAL PRIMARY KEY NOT NULL,
    timeslot_from VARCHAR(100) NOT NULL,
    timeslot_to VARCHAR(100) NOT NULL,
    isAllocated BOOLEAN DEFAULT 'False' NOT NULL,
    staff_id INTEGER,
    FOREIGN KEY (staff_id) REFERENCES staff (staff_id)

);

INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598338800000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598342400000, 1598367600000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598396400000, 1598410800000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598414400000, 1598436000000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598482800000, 1598504400000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598508000000, 1598533200000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598569200000, 1598590800000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598594400000, 1598608800000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598655600000, 1598677200000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598680800000, 1598706000000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598742000000, 1598770800000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598774400000, 1598803200000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598828400000, 1598853600000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598857200000, 1598882400000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598914800000, 1598936400000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598940000000, 1598954400000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599001200000, 1599022800000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599026400000, 1599033600000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599087600000, 1599102000000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599105600000, 1599120000000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599174000000, 1599192000000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599195600000, 1599220800000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599260400000, 1599274800000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599278400000, 1599285600000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599346800000, 1599361200000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599364800000, 1599368400000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599433200000, 1599444000000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599447600000, 1599465600000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599519600000, 1599548400000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599552000000, 1599562800000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599606000000, 1599624000000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599627600000, 1599638400000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599692400000, 1599706800000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599710400000, 1599728400000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599778800000, 1599786000000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599789600000, 1599818400000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599865200000, 1599894000000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599897600000, 1599919200000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599951600000, 1599969600000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599973200000, 1599984000000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600038000000, 1600056000000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600059600000, 1600063200000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600124400000, 1600153200000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600156800000, 1600185600000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600210800000, 1600232400000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600236000000, 1600261200000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600297200000, 1600326000000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600329600000, 1600351200000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600383600000, 1600398000000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600401600000, 1600405200000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600470000000, 1600484400000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600488000000, 1600495200000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600556400000, 1600570800000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600574400000, 1600578000000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600642800000, 1600653600000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600657200000, 1600668000000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600729200000, 1600740000000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600743600000, 1600754400000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600815600000, 1600833600000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600837200000, 1600844400000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600902000000, 1600916400000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600920000000, 1600948800000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600988400000, 1600995600000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600999200000, 1601002800000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1601074800000, 1601092800000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1601096400000, 1601114400000, FALSE, 1);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598338800000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598342400000, 1598374800000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598320800000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598324400000, 1598335200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598396400000, 1598410800000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598414400000, 1598436000000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598482800000, 1598511600000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598515200000, 1598540400000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598569200000, 1598598000000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598601600000, 1598612400000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598655600000, 1598688000000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598691600000, 1598713200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598742000000, 1598770800000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598774400000, 1598788800000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598828400000, 1598835600000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598839200000, 1598860800000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598914800000, 1598947200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598950800000, 1598968800000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599001200000, 1599033600000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599037200000, 1599058800000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599087600000, 1599094800000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599098400000, 1599120000000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599174000000, 1599192000000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599195600000, 1599210000000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599260400000, 1599271200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599274800000, 1599300000000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599346800000, 1599364800000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599368400000, 1599393600000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599433200000, 1599440400000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599444000000, 1599469200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599519600000, 1599541200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599544800000, 1599562800000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599606000000, 1599627600000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599631200000, 1599645600000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599692400000, 1599721200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599724800000, 1599753600000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599778800000, 1599789600000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599793200000, 1599811200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599865200000, 1599876000000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599879600000, 1599897600000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599951600000, 1599973200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599976800000, 1600005600000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600038000000, 1600045200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600048800000, 1600059600000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600124400000, 1600142400000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600146000000, 1600153200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600210800000, 1600232400000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600236000000, 1600243200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600297200000, 1600326000000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600329600000, 1600333200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600383600000, 1600412400000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600416000000, 1600437600000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600470000000, 1600495200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600498800000, 1600520400000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600556400000, 1600585200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600588800000, 1600614000000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600642800000, 1600675200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600678800000, 1600700400000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600729200000, 1600754400000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600758000000, 1600776000000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600815600000, 1600826400000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600830000000, 1600855200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600902000000, 1600909200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600912800000, 1600930800000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600988400000, 1601017200000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1601020800000, 1601024400000, FALSE, 2);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598317200000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598320800000, 1598335200000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598338800000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598342400000, 1598353200000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598396400000, 1598428800000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598432400000, 1598457600000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598482800000, 1598493600000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598497200000, 1598504400000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598569200000, 1598576400000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598580000000, 1598587200000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598655600000, 1598680800000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598684400000, 1598713200000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598742000000, 1598760000000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598763600000, 1598767200000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598828400000, 1598835600000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598839200000, 1598850000000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598914800000, 1598936400000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598940000000, 1598961600000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599001200000, 1599030000000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599033600000, 1599055200000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599087600000, 1599109200000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599112800000, 1599116400000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599174000000, 1599202800000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599206400000, 1599213600000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599260400000, 1599271200000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599274800000, 1599296400000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599346800000, 1599379200000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599382800000, 1599404400000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599433200000, 1599465600000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599469200000, 1599483600000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599519600000, 1599552000000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599555600000, 1599584400000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599606000000, 1599638400000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599642000000, 1599645600000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599692400000, 1599717600000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599721200000, 1599739200000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599778800000, 1599807600000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599811200000, 1599825600000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599865200000, 1599886800000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599890400000, 1599901200000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599951600000, 1599976800000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599980400000, 1600005600000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600038000000, 1600045200000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600048800000, 1600070400000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600124400000, 1600156800000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600160400000, 1600182000000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600210800000, 1600232400000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600236000000, 1600250400000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600297200000, 1600308000000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600311600000, 1600318800000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600383600000, 1600416000000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600419600000, 1600430400000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600470000000, 1600488000000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600491600000, 1600520400000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600556400000, 1600567200000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600570800000, 1600596000000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600642800000, 1600671600000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600675200000, 1600686000000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600729200000, 1600750800000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600754400000, 1600768800000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600815600000, 1600830000000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600833600000, 1600848000000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600902000000, 1600923600000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600927200000, 1600952400000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600988400000, 1601020800000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1601024400000, 1601046000000, FALSE, 3);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598324400000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598328000000, 1598349600000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598317200000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598320800000, 1598346000000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598396400000, 1598421600000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598425200000, 1598439600000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598482800000, 1598500800000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598504400000, 1598522400000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598569200000, 1598601600000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598605200000, 1598608800000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598655600000, 1598688000000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598691600000, 1598706000000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598742000000, 1598756400000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598760000000, 1598785200000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598828400000, 1598857200000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598860800000, 1598875200000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598914800000, 1598943600000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598947200000, 1598954400000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599001200000, 1599030000000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599033600000, 1599058800000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599087600000, 1599116400000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599120000000, 1599123600000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599174000000, 1599202800000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599206400000, 1599235200000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599260400000, 1599282000000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599285600000, 1599296400000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599346800000, 1599375600000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599379200000, 1599397200000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599433200000, 1599465600000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599469200000, 1599476400000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599519600000, 1599537600000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599541200000, 1599562800000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599606000000, 1599627600000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599631200000, 1599645600000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599692400000, 1599710400000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599714000000, 1599732000000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599778800000, 1599786000000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599789600000, 1599811200000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599865200000, 1599872400000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599876000000, 1599890400000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599951600000, 1599969600000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599973200000, 1599984000000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600038000000, 1600066800000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600070400000, 1600074000000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600124400000, 1600135200000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600138800000, 1600160400000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600210800000, 1600239600000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600243200000, 1600254000000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600297200000, 1600304400000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600308000000, 1600311600000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600383600000, 1600394400000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600398000000, 1600416000000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600470000000, 1600488000000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600491600000, 1600520400000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600556400000, 1600581600000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600585200000, 1600614000000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600642800000, 1600671600000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600675200000, 1600700400000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600729200000, 1600758000000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600761600000, 1600786800000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600815600000, 1600844400000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600848000000, 1600866000000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600902000000, 1600916400000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600920000000, 1600934400000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600988400000, 1601010000000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1601013600000, 1601035200000, FALSE, 4);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598320800000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598324400000, 1598353200000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598324400000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598328000000, 1598349600000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598396400000, 1598410800000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598414400000, 1598418000000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598482800000, 1598493600000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598497200000, 1598518800000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598569200000, 1598576400000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598580000000, 1598594400000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598655600000, 1598680800000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598684400000, 1598695200000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598742000000, 1598774400000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598778000000, 1598803200000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598828400000, 1598850000000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598853600000, 1598868000000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598914800000, 1598932800000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598936400000, 1598961600000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599001200000, 1599026400000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599030000000, 1599051600000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599087600000, 1599120000000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599123600000, 1599134400000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599174000000, 1599195600000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599199200000, 1599228000000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599260400000, 1599278400000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599282000000, 1599285600000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599346800000, 1599364800000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599368400000, 1599397200000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599433200000, 1599465600000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599469200000, 1599494400000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599519600000, 1599541200000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599544800000, 1599566400000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599606000000, 1599613200000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599616800000, 1599634800000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599692400000, 1599714000000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599717600000, 1599739200000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599778800000, 1599800400000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599804000000, 1599811200000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599865200000, 1599879600000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599883200000, 1599908400000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599951600000, 1599984000000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599987600000, 1600002000000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600038000000, 1600045200000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600048800000, 1600059600000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600124400000, 1600131600000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600135200000, 1600149600000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600210800000, 1600243200000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600246800000, 1600261200000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600297200000, 1600326000000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600329600000, 1600347600000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600383600000, 1600412400000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600416000000, 1600441200000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600470000000, 1600488000000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600491600000, 1600498800000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600556400000, 1600570800000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600574400000, 1600596000000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600642800000, 1600675200000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600678800000, 1600700400000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600729200000, 1600740000000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600743600000, 1600765200000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600815600000, 1600837200000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600840800000, 1600848000000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600902000000, 1600916400000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600920000000, 1600930800000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600988400000, 1601013600000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1601017200000, 1601031600000, FALSE, 5);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598331600000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598335200000, 1598356800000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598328000000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598331600000, 1598338800000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598396400000, 1598428800000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598432400000, 1598446800000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598482800000, 1598508000000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598511600000, 1598529600000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598569200000, 1598580000000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598583600000, 1598590800000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598655600000, 1598670000000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598673600000, 1598695200000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598742000000, 1598767200000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598770800000, 1598785200000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598828400000, 1598842800000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598846400000, 1598868000000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598914800000, 1598943600000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598947200000, 1598961600000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599001200000, 1599030000000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599033600000, 1599055200000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599087600000, 1599102000000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599105600000, 1599123600000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599174000000, 1599181200000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599184800000, 1599202800000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599260400000, 1599274800000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599278400000, 1599282000000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599346800000, 1599375600000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599379200000, 1599400800000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599433200000, 1599440400000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599444000000, 1599454800000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599519600000, 1599537600000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599541200000, 1599559200000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599606000000, 1599634800000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599638400000, 1599667200000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599692400000, 1599703200000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599706800000, 1599728400000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599778800000, 1599811200000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599814800000, 1599825600000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599865200000, 1599879600000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599883200000, 1599904800000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599951600000, 1599984000000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599987600000, 1600002000000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600038000000, 1600059600000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600063200000, 1600088400000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600124400000, 1600142400000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600146000000, 1600153200000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600210800000, 1600239600000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600243200000, 1600272000000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600297200000, 1600322400000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600326000000, 1600333200000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600383600000, 1600416000000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600419600000, 1600426800000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600470000000, 1600488000000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600491600000, 1600509600000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600556400000, 1600588800000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600592400000, 1600617600000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600642800000, 1600664400000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600668000000, 1600671600000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600729200000, 1600758000000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600761600000, 1600786800000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600815600000, 1600844400000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600848000000, 1600873200000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600902000000, 1600912800000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600916400000, 1600938000000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600988400000, 1601013600000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1601017200000, 1601020800000, FALSE, 6);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598320800000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598324400000, 1598349600000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598335200000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598338800000, 1598364000000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598396400000, 1598410800000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598414400000, 1598428800000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598482800000, 1598493600000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598497200000, 1598522400000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598569200000, 1598580000000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598583600000, 1598598000000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598655600000, 1598680800000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598684400000, 1598691600000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598742000000, 1598767200000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598770800000, 1598781600000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598828400000, 1598835600000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598839200000, 1598846400000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598914800000, 1598929200000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598932800000, 1598940000000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599001200000, 1599008400000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599012000000, 1599015600000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599087600000, 1599094800000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599098400000, 1599102000000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599174000000, 1599202800000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599206400000, 1599213600000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599260400000, 1599267600000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599271200000, 1599292800000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599346800000, 1599379200000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599382800000, 1599404400000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599433200000, 1599454800000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599458400000, 1599462000000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599519600000, 1599526800000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599530400000, 1599534000000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599606000000, 1599624000000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599627600000, 1599652800000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599692400000, 1599710400000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599714000000, 1599732000000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599778800000, 1599789600000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599793200000, 1599800400000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599865200000, 1599897600000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599901200000, 1599912000000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599951600000, 1599962400000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599966000000, 1599980400000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600038000000, 1600045200000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600048800000, 1600077600000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600124400000, 1600156800000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600160400000, 1600167600000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600210800000, 1600243200000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600246800000, 1600250400000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600297200000, 1600322400000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600326000000, 1600347600000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600383600000, 1600416000000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600419600000, 1600423200000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600470000000, 1600495200000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600498800000, 1600524000000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600556400000, 1600581600000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600585200000, 1600592400000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600642800000, 1600671600000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600675200000, 1600693200000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600729200000, 1600750800000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600754400000, 1600761600000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600815600000, 1600830000000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600833600000, 1600851600000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600902000000, 1600934400000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600938000000, 1600963200000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600988400000, 1601013600000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1601017200000, 1601038800000, FALSE, 7);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598328000000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598331600000, 1598360400000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598342400000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598346000000, 1598360400000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598396400000, 1598414400000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598418000000, 1598439600000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598482800000, 1598490000000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598493600000, 1598518800000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598569200000, 1598598000000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598601600000, 1598612400000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598655600000, 1598670000000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598673600000, 1598677200000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598742000000, 1598749200000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598752800000, 1598763600000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598828400000, 1598850000000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598853600000, 1598882400000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598914800000, 1598940000000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598943600000, 1598961600000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599001200000, 1599015600000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599019200000, 1599040800000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599087600000, 1599116400000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599120000000, 1599130800000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599174000000, 1599206400000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599210000000, 1599224400000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599260400000, 1599289200000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599292800000, 1599296400000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599346800000, 1599361200000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599364800000, 1599368400000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599433200000, 1599462000000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599465600000, 1599476400000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599519600000, 1599530400000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599534000000, 1599552000000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599606000000, 1599613200000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599616800000, 1599638400000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599692400000, 1599699600000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599703200000, 1599706800000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599778800000, 1599811200000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599814800000, 1599836400000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599865200000, 1599872400000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599876000000, 1599883200000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599951600000, 1599969600000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599973200000, 1599994800000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600038000000, 1600059600000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600063200000, 1600081200000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600124400000, 1600135200000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600138800000, 1600156800000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600210800000, 1600221600000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600225200000, 1600243200000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600297200000, 1600326000000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600329600000, 1600351200000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600383600000, 1600405200000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600408800000, 1600416000000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600470000000, 1600480800000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600484400000, 1600495200000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600556400000, 1600567200000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600570800000, 1600581600000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600642800000, 1600653600000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600657200000, 1600678800000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600729200000, 1600761600000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600765200000, 1600790400000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600815600000, 1600840800000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600844400000, 1600851600000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600902000000, 1600920000000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600923600000, 1600930800000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600988400000, 1601013600000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1601017200000, 1601042400000, FALSE, 8);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598324400000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598328000000, 1598349600000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598324400000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598328000000, 1598338800000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598396400000, 1598407200000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598410800000, 1598418000000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598482800000, 1598497200000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598500800000, 1598515200000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598569200000, 1598583600000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598587200000, 1598616000000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598655600000, 1598662800000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598666400000, 1598680800000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598742000000, 1598749200000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598752800000, 1598781600000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598828400000, 1598839200000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598842800000, 1598868000000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598914800000, 1598932800000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598936400000, 1598958000000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599001200000, 1599033600000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599037200000, 1599062400000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599087600000, 1599098400000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599102000000, 1599123600000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599174000000, 1599202800000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599206400000, 1599231600000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599260400000, 1599278400000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599282000000, 1599292800000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599346800000, 1599364800000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599368400000, 1599379200000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599433200000, 1599447600000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599451200000, 1599472800000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599519600000, 1599541200000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599544800000, 1599566400000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599606000000, 1599616800000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599620400000, 1599631200000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599692400000, 1599710400000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599714000000, 1599742800000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599778800000, 1599796800000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599800400000, 1599811200000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599865200000, 1599890400000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599894000000, 1599919200000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599951600000, 1599969600000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599973200000, 1599980400000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600038000000, 1600052400000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600056000000, 1600074000000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600124400000, 1600153200000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600156800000, 1600185600000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600210800000, 1600232400000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600236000000, 1600261200000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600297200000, 1600304400000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600308000000, 1600311600000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600383600000, 1600394400000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600398000000, 1600426800000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600470000000, 1600491600000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600495200000, 1600513200000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600556400000, 1600585200000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600588800000, 1600617600000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600642800000, 1600653600000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600657200000, 1600686000000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600729200000, 1600758000000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600761600000, 1600779600000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600815600000, 1600840800000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600844400000, 1600848000000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600902000000, 1600916400000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600920000000, 1600927200000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600988400000, 1601020800000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1601024400000, 1601053200000, FALSE, 9);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598331600000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598335200000, 1598367600000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598342400000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598346000000, 1598374800000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598396400000, 1598421600000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598425200000, 1598450400000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598482800000, 1598504400000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598508000000, 1598533200000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598569200000, 1598576400000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598580000000, 1598590800000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598655600000, 1598662800000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598666400000, 1598670000000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598742000000, 1598763600000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598767200000, 1598774400000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598828400000, 1598835600000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598839200000, 1598850000000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598914800000, 1598936400000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598940000000, 1598965200000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599001200000, 1599026400000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599030000000, 1599058800000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599087600000, 1599116400000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599120000000, 1599123600000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599174000000, 1599192000000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599195600000, 1599206400000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599260400000, 1599278400000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599282000000, 1599289200000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599346800000, 1599354000000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599357600000, 1599386400000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599433200000, 1599462000000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599465600000, 1599480000000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599519600000, 1599548400000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599552000000, 1599580800000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599606000000, 1599627600000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599631200000, 1599656400000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599692400000, 1599710400000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599714000000, 1599739200000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599778800000, 1599804000000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599807600000, 1599829200000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599865200000, 1599886800000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599890400000, 1599897600000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599951600000, 1599962400000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599966000000, 1599976800000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600038000000, 1600048800000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600052400000, 1600081200000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600124400000, 1600135200000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600138800000, 1600156800000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600210800000, 1600243200000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600246800000, 1600272000000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600297200000, 1600308000000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600311600000, 1600329600000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600383600000, 1600412400000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600416000000, 1600434000000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600470000000, 1600477200000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600480800000, 1600498800000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600556400000, 1600570800000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600574400000, 1600592400000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600642800000, 1600660800000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600664400000, 1600686000000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600729200000, 1600761600000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600765200000, 1600776000000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600815600000, 1600840800000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600844400000, 1600851600000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600902000000, 1600923600000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600927200000, 1600952400000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600988400000, 1601010000000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1601013600000, 1601035200000, FALSE, 10);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598324400000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598328000000, 1598349600000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598338800000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598342400000, 1598367600000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598396400000, 1598418000000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598421600000, 1598439600000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598482800000, 1598508000000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598511600000, 1598522400000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598569200000, 1598601600000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598605200000, 1598612400000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598655600000, 1598670000000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598673600000, 1598688000000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598742000000, 1598763600000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598767200000, 1598781600000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598828400000, 1598853600000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598857200000, 1598875200000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598914800000, 1598922000000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598925600000, 1598936400000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599001200000, 1599022800000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599026400000, 1599051600000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599087600000, 1599109200000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599112800000, 1599123600000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599174000000, 1599184800000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599188400000, 1599213600000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599260400000, 1599274800000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599278400000, 1599289200000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599346800000, 1599372000000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599375600000, 1599390000000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599433200000, 1599454800000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599458400000, 1599462000000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599519600000, 1599534000000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599537600000, 1599566400000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599606000000, 1599638400000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599642000000, 1599652800000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599692400000, 1599721200000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599724800000, 1599750000000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599778800000, 1599789600000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599793200000, 1599796800000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599865200000, 1599872400000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599876000000, 1599904800000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599951600000, 1599973200000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599976800000, 1599994800000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600038000000, 1600059600000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600063200000, 1600081200000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600124400000, 1600146000000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600149600000, 1600160400000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600210800000, 1600221600000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600225200000, 1600228800000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600297200000, 1600322400000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600326000000, 1600344000000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600383600000, 1600416000000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600419600000, 1600441200000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600470000000, 1600477200000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600480800000, 1600502400000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600556400000, 1600581600000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600585200000, 1600610400000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600642800000, 1600675200000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600678800000, 1600693200000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600729200000, 1600743600000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600747200000, 1600758000000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600815600000, 1600840800000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600844400000, 1600855200000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600902000000, 1600934400000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600938000000, 1600945200000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600988400000, 1601017200000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1601020800000, 1601035200000, FALSE, 11);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598338800000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598342400000, 1598360400000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598310000000, 1598320800000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598324400000, 1598331600000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598396400000, 1598410800000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598414400000, 1598436000000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598482800000, 1598493600000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598497200000, 1598508000000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598569200000, 1598598000000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598601600000, 1598612400000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598655600000, 1598662800000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598666400000, 1598684400000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598742000000, 1598756400000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598760000000, 1598778000000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598828400000, 1598846400000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598850000000, 1598868000000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598914800000, 1598947200000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1598950800000, 1598958000000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599001200000, 1599012000000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599015600000, 1599026400000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599087600000, 1599120000000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599123600000, 1599138000000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599174000000, 1599206400000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599210000000, 1599231600000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599260400000, 1599267600000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599271200000, 1599274800000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599346800000, 1599357600000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599361200000, 1599375600000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599433200000, 1599454800000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599458400000, 1599462000000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599519600000, 1599541200000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599544800000, 1599559200000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599606000000, 1599624000000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599627600000, 1599638400000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599692400000, 1599706800000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599710400000, 1599728400000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599778800000, 1599796800000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599800400000, 1599804000000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599865200000, 1599897600000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599901200000, 1599919200000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599951600000, 1599966000000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1599969600000, 1599994800000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600038000000, 1600070400000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600074000000, 1600077600000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600124400000, 1600131600000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600135200000, 1600138800000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600210800000, 1600225200000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600228800000, 1600246800000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600297200000, 1600326000000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600329600000, 1600351200000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600383600000, 1600394400000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600398000000, 1600408800000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600470000000, 1600495200000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600498800000, 1600527600000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600556400000, 1600588800000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600592400000, 1600610400000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600642800000, 1600650000000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600653600000, 1600660800000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600729200000, 1600761600000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600765200000, 1600783200000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600815600000, 1600822800000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600826400000, 1600830000000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600902000000, 1600912800000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600916400000, 1600920000000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1600988400000, 1601002800000, FALSE, 12);
INSERT INTO shifts
    (timeslot_from,timeslot_to,isAllocated,staff_id)
VALUES
    (1601006400000, 1601024400000, FALSE, 12);

CREATE TABLE roster
(
    roster_id SERIAL PRIMARY KEY NOT NULL,
    title VARCHAR(50),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    week_number SERIAL,
    status VARCHAR(9),
    shift_id INTEGER,
    phol_id INTEGER,
    FOREIGN KEY (shift_id) REFERENCES shifts (shift_id),
    FOREIGN KEY (phol_id) REFERENCES publicholidays (phol_id)

);


INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 1, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 2, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 3, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 4, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 5, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 6, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 7, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 8, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 9, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 10, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 11, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 12, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 13, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 14, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 15, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 16, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 17, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 18, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 19, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 20, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 21, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 22, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 23, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 24, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 25, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 26, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 27, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 28, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 29, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 30, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 31, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 32, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 33, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 34, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 35, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 36, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 37, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 38, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 39, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 40, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 41, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 42, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 43, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 44, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 45, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 46, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 47, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 48, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 49, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 50, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 51, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 52, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 53, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 54, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 55, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 56, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 57, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 58, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 59, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 60, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 61, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 62, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 63, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 64, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 65, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 66, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 67, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 68, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 69, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 70, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 71, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 72, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 73, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 74, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 75, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 76, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 77, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 78, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 79, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 80, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 81, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 82, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 83, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 84, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 85, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 86, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 87, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 88, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 89, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 90, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 91, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 92, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 93, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 94, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 95, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 96, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 97, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 98, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 99, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 100, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 101, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 102, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 103, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 104, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 105, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 106, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 107, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 108, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 109, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 110, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 111, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 112, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 113, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 114, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 115, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 116, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 117, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 118, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 119, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 120, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 121, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 122, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 123, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 124, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 125, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 126, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 127, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 128, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 129, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 130, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 131, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 132, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 133, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 134, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 135, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 136, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 137, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 138, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 139, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 140, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 141, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 142, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 143, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 144, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 145, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 146, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 147, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 148, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 149, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 150, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 151, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 152, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 153, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 154, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 155, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 156, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 157, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 158, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 159, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 160, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 161, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 162, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 163, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 164, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 165, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 166, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 167, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 168, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 169, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 170, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 171, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 172, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 173, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 174, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 175, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 176, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 177, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 178, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 179, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 180, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 181, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 182, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 183, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 184, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 185, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 186, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 187, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 188, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 189, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 190, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 191, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 192, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 193, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 194, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 195, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 196, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 197, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 198, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 199, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 200, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 201, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 202, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 203, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 204, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 205, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 206, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 207, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 208, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 209, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 210, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 211, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 212, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 213, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 214, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 215, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 216, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 217, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 218, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 219, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 220, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 221, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 222, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 223, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 224, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 225, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 226, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 227, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 228, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 229, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 230, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 231, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 232, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 233, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 234, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 235, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 236, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 237, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 238, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 239, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 240, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 241, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 242, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 243, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 244, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 245, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 246, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 247, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 248, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 249, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 250, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 251, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 252, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 253, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 254, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 255, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 256, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 257, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 258, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 259, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 260, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 261, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 262, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 263, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 264, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 265, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 266, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 267, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 268, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 269, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 270, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 271, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 272, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 273, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 274, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 275, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 276, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 277, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 278, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 279, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 280, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 281, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 282, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 283, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 284, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 285, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 286, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 287, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 288, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 289, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 290, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 291, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 292, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 293, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 294, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 295, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 296, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 297, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 298, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 299, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 300, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 301, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 302, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 303, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 304, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 305, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 306, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 307, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 308, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 309, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 310, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 311, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 312, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 313, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 314, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 315, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 316, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 317, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 318, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 319, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 320, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 321, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 322, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 323, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 324, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 325, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 326, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 327, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 328, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 329, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 330, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 331, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 332, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 333, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 334, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 335, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 336, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 337, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 338, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 339, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 340, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 341, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 342, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 343, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 344, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 345, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 346, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 347, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 348, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 349, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 350, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 351, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 352, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 353, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 354, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 355, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 356, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 357, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 358, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 359, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 360, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 361, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 362, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 363, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 364, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 365, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 366, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 367, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 368, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 369, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 370, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 371, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 372, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 373, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 374, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 375, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 376, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 377, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 378, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 379, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 380, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 381, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 382, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 383, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 384, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 385, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 386, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 387, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 388, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 389, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 390, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 391, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 392, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 393, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 394, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 395, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 396, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 397, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 398, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 399, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 400, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 401, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 402, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 403, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 404, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 405, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 406, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 407, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 408, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 409, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 410, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 411, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 412, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 413, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 414, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 415, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 416, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 417, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 418, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 419, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 420, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 421, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 422, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 423, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 424, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 425, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 426, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 427, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 428, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 429, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 430, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 431, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 432, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 433, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 434, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 435, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 436, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 437, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 438, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 439, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 440, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 441, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 442, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 443, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 444, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 445, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 446, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 447, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 448, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 449, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 450, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 451, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 452, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 453, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 454, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 455, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 456, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 457, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 458, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 459, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 460, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 461, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 462, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 463, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 464, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 465, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 466, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 467, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 468, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 469, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 470, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 471, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 472, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 473, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 474, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 475, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 476, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 477, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 478, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 479, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 480, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 481, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 482, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 483, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 484, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 485, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 486, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 487, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 488, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 489, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 490, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 491, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 492, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 493, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 494, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 495, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 496, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 497, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 498, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 499, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 500, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 501, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 502, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 503, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 504, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 505, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 506, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 507, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 508, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 509, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 510, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 511, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 512, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 513, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 514, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 515, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 516, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 517, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 518, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 519, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 520, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 521, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 522, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 523, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 524, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 525, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 526, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 527, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 528, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 529, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 530, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 531, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 532, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 533, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 534, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 535, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 536, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 537, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 538, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 539, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 540, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 541, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 542, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 543, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 544, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 545, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 546, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 547, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 548, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 549, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 550, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 551, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 552, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 553, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 554, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 555, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 556, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 557, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 558, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 559, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 560, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 561, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 562, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 563, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 564, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 565, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 566, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 567, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 568, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 569, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 570, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 571, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 572, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 573, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 574, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 575, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 576, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 577, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 578, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 579, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 580, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 581, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 582, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 583, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 584, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 585, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 586, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 587, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 588, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 589, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 590, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 591, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 592, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 593, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 594, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 595, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 596, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 597, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 598, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 599, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 600, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 601, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 602, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 603, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 604, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 605, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 606, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 607, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 608, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 609, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 610, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 611, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 612, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 613, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 614, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 615, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 616, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 617, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 618, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 619, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 620, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 621, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 622, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 623, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 624, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 625, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 626, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 627, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 628, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 629, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 630, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 631, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 632, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 633, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 634, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 635, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 636, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 637, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 638, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 639, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 640, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 641, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 642, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 643, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 644, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 645, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 646, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 647, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 648, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 649, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 650, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 651, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 652, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 653, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 654, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 655, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 656, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 657, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 658, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 659, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 660, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 661, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 662, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 663, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 664, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 665, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 666, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 667, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 668, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 669, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 670, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 671, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 672, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 673, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 674, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 675, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 676, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 677, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 678, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 679, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 680, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 681, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 682, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 683, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 684, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 685, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 686, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 687, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 688, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 689, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 690, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 691, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 692, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 693, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 694, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 695, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 696, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 697, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 698, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 699, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 700, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 701, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 702, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 703, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 704, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 705, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 706, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 707, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 708, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 709, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 710, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 711, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 712, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 713, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 714, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 715, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 716, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 717, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 718, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 719, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 720, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 721, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 722, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 723, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 724, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 725, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 726, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 727, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 728, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 729, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 730, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 731, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 732, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 733, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 734, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 735, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 736, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 737, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 738, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 739, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 740, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 741, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 742, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 743, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 744, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 745, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 746, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 747, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 748, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 749, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 750, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 751, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 752, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 753, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 754, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 755, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 756, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 757, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 758, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 759, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 760, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 761, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 762, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 763, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 764, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 765, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 766, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 767, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 768, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 769, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 770, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 771, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 772, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 773, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 774, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 775, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 776, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 777, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 778, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 779, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 780, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 781, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 782, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 783, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 784, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 785, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 786, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 787, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 788, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 789, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 790, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 791, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 792, 1);

INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 1, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 2, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 3, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 4, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 5, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 6, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 7, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 8, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 9, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 10, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 11, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 12, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 13, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 14, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 15, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 16, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 17, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 18, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 19, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 20, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 21, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 22, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 23, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 24, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 25, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 26, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 27, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 28, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 29, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 30, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 31, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 32, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 33, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 34, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 35, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 36, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 37, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 38, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 39, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 40, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 41, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 42, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 43, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 44, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 45, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 46, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 47, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 48, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 49, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 50, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 51, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 52, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 53, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 54, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 55, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 56, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 57, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 58, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 59, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 60, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 61, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 62, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 63, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 64, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 65, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 66, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 67, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 68, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 69, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 70, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 71, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 72, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 73, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 74, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 75, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 76, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 77, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 78, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 79, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 80, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 81, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 82, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 83, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 84, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 85, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 86, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 87, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 88, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 89, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 90, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 91, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 92, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 93, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 94, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 95, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 96, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 97, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 98, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 99, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 100, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 101, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 102, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 103, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 104, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 105, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 106, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 107, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 108, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 109, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 110, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 111, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 112, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 113, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 114, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 115, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 116, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 117, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 118, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 119, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 120, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 121, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 122, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 123, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 124, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 125, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 126, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 127, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 128, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 129, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 130, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 131, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 132, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 133, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 134, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 135, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 136, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 137, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 138, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 139, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 140, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 141, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 142, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 143, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 144, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 145, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 146, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 147, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 148, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 149, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 150, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 151, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 152, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 153, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 154, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 155, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 156, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 157, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 158, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 159, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 160, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 161, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 162, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 163, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 164, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 165, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 166, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 167, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 168, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 169, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 170, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 171, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 172, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 173, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 174, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 175, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 176, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 177, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 178, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 179, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 180, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 181, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 182, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 183, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 184, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 185, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 186, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 187, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 188, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 189, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 190, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 191, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 192, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 193, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 194, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 195, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 196, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 197, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 198, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 199, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 200, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 201, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 202, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 203, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 204, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 205, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 206, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 207, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 208, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 209, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 210, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 211, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 212, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 213, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 214, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 215, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 216, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 217, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 218, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 219, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 220, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 221, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 222, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 223, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 224, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 225, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 226, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 227, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 228, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 229, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 230, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 231, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 232, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 233, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 234, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 235, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 236, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 237, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 238, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 239, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 240, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 241, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 242, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 243, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 244, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 245, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 246, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 247, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 248, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 249, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 250, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 251, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 252, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 253, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 254, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 255, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 256, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 257, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 258, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 259, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 260, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 261, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 262, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 263, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 264, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 265, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 266, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 267, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 268, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 269, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 270, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 271, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 272, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 273, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 274, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 275, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 276, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 277, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 278, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 279, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 280, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 281, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 282, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 283, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 284, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 285, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 286, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 287, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 288, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 289, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 290, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 291, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 292, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 293, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 294, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 295, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 296, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 297, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 298, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 299, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 300, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 301, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 302, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 303, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 304, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 305, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 306, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 307, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 308, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 309, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 310, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 311, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 312, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 313, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 314, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 315, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 316, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 317, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 318, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 319, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 320, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 321, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 322, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 323, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 324, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 325, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 326, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 327, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 328, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 329, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 330, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 331, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 332, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 333, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 334, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 335, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 336, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 337, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 338, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 339, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 340, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 341, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 342, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 343, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 344, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 345, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 346, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 347, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 348, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 349, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 350, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 351, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 352, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 353, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 354, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 355, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 356, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 357, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 358, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 359, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 360, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 361, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 362, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 363, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 364, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 365, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 366, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 367, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 368, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 369, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 370, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 371, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 372, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 373, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 374, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 375, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 376, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 377, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 378, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 379, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 380, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 381, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 382, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 383, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 384, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 385, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 386, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 387, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 388, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 389, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 390, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 391, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 392, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 393, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 394, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 395, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 396, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 397, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 398, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 399, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 400, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 401, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 402, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 403, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 404, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 405, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 406, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 407, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 408, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 409, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 410, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 411, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 412, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 413, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 414, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 415, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 416, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 417, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 418, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 419, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 420, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 421, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 422, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 423, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 424, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 425, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 426, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 427, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 428, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 429, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 430, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 431, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 432, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 433, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 434, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 435, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 436, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 437, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 438, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 439, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 440, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 441, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 442, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 443, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 444, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 445, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 446, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 447, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 448, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 449, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 450, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 451, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 452, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 453, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 454, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 455, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 456, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 457, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 458, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 459, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 460, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 461, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 462, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 463, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 464, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 465, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 466, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 467, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 468, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 469, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 470, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 471, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 472, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 473, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 474, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 475, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 476, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 477, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 478, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 479, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 480, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 481, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 482, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 483, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 484, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 485, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 486, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 487, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 488, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 489, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 490, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 491, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 492, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 493, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 494, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 495, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 496, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 497, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 498, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 499, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 500, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 501, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 502, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 503, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 504, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 505, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 506, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 507, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 508, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 509, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 510, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 511, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 512, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 513, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 514, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 515, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 516, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 517, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 518, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 519, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 520, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 521, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 522, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 523, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 524, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 525, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 526, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 527, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 528, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 529, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 530, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 531, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 532, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 533, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 534, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 535, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 536, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 537, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 538, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 539, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 540, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 541, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 542, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 543, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 544, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 545, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 546, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 547, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 548, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 549, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 550, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 551, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 552, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 553, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 554, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 555, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 556, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 557, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 558, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 559, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 560, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 561, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 562, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 563, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 564, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 565, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 566, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 567, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 568, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 569, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 570, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 571, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 572, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 573, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 574, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 575, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 576, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 577, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 578, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 579, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 580, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 581, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 582, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 583, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 584, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 585, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 586, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 587, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 588, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 589, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 590, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 591, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 592, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 593, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 594, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 595, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 596, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 597, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 598, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 599, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 600, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 601, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 602, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 603, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 604, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 605, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 606, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 607, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 608, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 609, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 610, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 611, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 612, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 613, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 614, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 615, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 616, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 617, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 618, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 619, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 620, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 621, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 622, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 623, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 624, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 625, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 626, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 627, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 628, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 629, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 630, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 631, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 632, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 633, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 634, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 635, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 636, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 637, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 638, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 639, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 640, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 641, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 642, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 643, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 644, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 645, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 646, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 647, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 648, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 649, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 650, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 651, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 652, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 653, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 654, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 655, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 656, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 657, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 658, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 659, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 660, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 661, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 662, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 663, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 664, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 665, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 666, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 667, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 668, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 669, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 670, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 671, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 672, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 673, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 674, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 675, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 676, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 677, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 678, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 679, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 680, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 681, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 682, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 683, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 684, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 685, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 686, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 687, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 688, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 689, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 690, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 691, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 692, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 693, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 694, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 695, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 696, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 697, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 698, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 699, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 700, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 701, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 702, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 703, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 704, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 705, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 706, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 707, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 708, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 709, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 710, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 711, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 712, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 713, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 714, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 715, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 716, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 717, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 718, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 719, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 720, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 721, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 722, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 723, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 724, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 725, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 726, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 727, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 728, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 729, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 730, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 731, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 732, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 733, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 734, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 735, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 736, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 737, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 738, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 739, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week1', '2020-08-24', '2020-08-30', 1, 'Finalised', 740, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 741, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 742, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 743, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 744, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 745, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 746, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 747, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 748, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 749, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 750, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 751, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 752, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 753, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week2', '2020-08-31', '2020-09-06', 2, 'Finalised', 754, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 755, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 756, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 757, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 758, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 759, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 760, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 761, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 762, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 763, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 764, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 765, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 766, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 767, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week3', '2020-09-07', '2020-09-13', 3, 'Open', 768, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 769, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 770, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 771, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 772, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 773, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 774, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 775, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 776, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 777, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 778, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 779, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 780, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 781, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week4', '2020-09-14', '2020-09-20', 4, 'Open', 782, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 783, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 784, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 785, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 786, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 787, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 788, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 789, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 790, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 791, 1);
INSERT INTO roster
    (title,start_date,end_date,week_number,status,shift_id,phol_id)
VALUES
    ('Week5', '2020-09-21', '2020-09-27', 5, 'Open', 792, 1);

CREATE TABLE blank_shifts
(
    blank_shift_id SERIAL PRIMARY KEY NOT NULL,
    timeslot_from VARCHAR(13) NOT NULL,
    timeslot_to VARCHAR(13) NOT NULL,
    isAllocated BOOLEAN DEFAULT 'False' NOT NULL,
    staff_id INTEGER

);

CREATE TABLE blank_roster
(
    blank_roster_id SERIAL PRIMARY KEY NOT NULL,
    title VARCHAR(50),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    week_number SERIAL,
    status VARCHAR(9),
    shift_id INTEGER,
    phol_id INTEGER

);