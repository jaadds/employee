INSERT INTO employee(first_name, last_name, email)
SELECT 'Bilbo','Baggins', 'bilbo@bagend.me'
FROM dual
WHERE NOT EXISTS (
    SELECT 1
    FROM employee
    WHERE first_name = 'Bilbo'
);