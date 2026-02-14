-- EX 7-1

SELECT SUBSTRING('Please find the substring in this string', 17, 9);

-- EX 7-2

SELECT ABS(-25.76823), SIGN(-25.76823), ROUND(-25.76823, 2);

-- EX 7-3

SELECT EXTRACT(MONTH FROM CURRENT_DATE());


-- String Data

CREATE TABLE string_tbl(
    char_fld CHAR(30),
    vchar_fld VARCHAR(30),
    text_fld TEXT
 );

INSERT INTO string_tbl (char_fld, vchar_fld, text_fld)
VALUES (
    'This is char data',
    'This is varchar data',
    'This is text data'
);

DELETE FROM string_tbl;


INSERT INTO string_tbl (char_fld, vchar_fld, text_fld)
VALUES (
    'This string is 28 characters',
    'This string is 28 characters',
    'This string is 28 characters'
);

SELECT LENGTH(char_fld) char_length,
    LENGTH(vchar_fld) varchar_length,
    LENGTH(text_fld) text_length
FROM string_tbl;

-- indexed from 1, 0 means not found
SELECT POSITION('characters' IN vchar_fld)
FROM string_tbl;

-- third parameter defines the search’s start position
SELECT LOCATE('is', vchar_fld, 5)
FROM string_tbl;

DELETE FROM string_tbl;


INSERT INTO string_tbl(vchar_fld)
VALUES ('abcd'), ('xyz'), ('QRSTUV'), ('qrstuv'), ('12345');

SELECT vchar_fld
FROM string_tbl
ORDER BY vchar_fld;

SELECT STRCMP('12345','12345') 12345_12345,
STRCMP('abcd','xyz') abcd_xyz,
STRCMP('abcd','QRSTUV') abcd_QRSTUV,
STRCMP('qrstuv','QRSTUV') qrstuv_QRSTUV,
STRCMP('12345','xyz') 12345_xyz,
STRCMP('xyz','qrstuv') xyz_qrstuv;

SELECT name, name LIKE '%y' ends_in_y
FROM category;

SELECT name, name REGEXP 'y$' ends_in_y
FROM category;

DELETE FROM string_tbl;


INSERT INTO string_tbl (text_fld)
VALUES ('This string was 29 characters');

UPDATE string_tbl
SET text_fld = CONCAT(text_fld, ', but now it is longer');

SELECT concat(first_name, ' ',
    last_name,
    ' has been a customer since ',
    date(create_date)) cust_narrative
FROM customer;

SELECT INSERT('goodbye world', 9, 0, 'cruel ') string;

SELECT REPLACE('goodbye world', 'goodbye', 'hello')
FROM dual;

SELECT SUBSTRING('goodbye cruel world', 9, 5);


-- Numeric Data

SELECT (37 * 59) / (78 - (8 * 6));

SELECT POW(2,10) kilobyte,
    POW(2,20) megabyte,
    POW(2,30) gigabyte,
    POW(2,40) terabyte;

SELECT ROUND(72.0909, 1), ROUND(72.0909, 2), ROUND(72.0909, 3);

SELECT TRUNCATE(72.0909, 1), TRUNCATE(72.0909, 2), TRUNCATE(72.0909, 3);


-- Temporal Data

SELECT @@global.time_zone, @@session.time_zone;

SELECT CAST('2019-09-17' AS DATE) date_field,
    CAST('108:17:57' AS TIME) time_field;

UPDATE rental
SET return_date = STR_TO_DATE('September 17, 2019', '%M %d, %Y')
WHERE rental_id = 99999;

SELECT CURRENT_DATE(), CURRENT_TIME(), CURRENT_TIMESTAMP();

SELECT DATE_ADD(CURRENT_DATE(), INTERVAL 5 DAY);

SELECT LAST_DAY(CURRENT_DATE());

SELECT DAYNAME(CURRENT_DATE());

SELECT EXTRACT(YEAR FROM CURRENT_TIMESTAMP());

SELECT DATEDIFF(CURRENT_TIMESTAMP(), '2019-09-03');
