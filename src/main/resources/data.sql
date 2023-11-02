-- CREATE TABLE IF NOT EXISTS EMPLOYEE (
--     EMP_ID INT AUTO_INCREMENT PRIMARY KEY,
--     FIRST_NAME VARCHAR(255) NOT NULL,
--     LAST_NAME VARCHAR(255),
--     EMAIL VARCHAR(255)
-- );

-- INSERT INTO EMPLOYEE(FIRST_NAME, LAST_NAME, EMAIL) VALUES ('Bilbo', 'Baggins', 'bilbo@bagend.me');
INSERT INTO employee(first_name, last_name, email) VALUES ('Bilbo', 'Baggins', 'bilbo@bagend.me');


INSERT INTO employee(first_name, last_name, email)
SELECT 'Bilbo','Baggins', 'bilbo@bagend.me'
FROM dual
WHERE NOT EXISTS (
    SELECT 1
    FROM employee
    WHERE first_name = 'Bilbo'
);