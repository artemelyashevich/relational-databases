CREATE TABLE IF NOT EXISTS souvenirs (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL,
    manufacturer_details VARCHAR(200) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS manufacturers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);

ALTER TABLE
    souvenirs
ADD
    COLUMN manufacturer_id INT;

ALTER TABLE
    souvenirs
ADD
    CONSTRAINT fk_manufacturer FOREIGN KEY (manufacturer_id) REFERENCES manufacturers(id)
INSERT INTO
    souvenirs (title, release_date, manufacturer_details, price)
VALUES
    (
        'Магнит "Городской пейзаж 1"',
        '2022-01-01',
        'ABC Souvenirs Inc., 123 Main Street, City 1, Country 1',
        9.99
    ),
    (
        'Магнит "Городской пейзаж 2"',
        '2022-02-02',
        'ABC Souvenirs Inc., 456 Main Street, City 2, Country 2',
        9.99
    ),
    (
        'Магнит "Городской пейзаж 3"',
        '2022-03-03',
        'ABC Souvenirs Inc., 789 Main Street, City 3, Country 3',
        9.99
    ),
    (
        'Магнит "Городской пейзаж 4"',
        '2022-04-04',
        'ABC Souvenirs Inc., 987 Main Street, City 4, Country 4',
        9.99
    ),
    (
        'Магнит "Городской пейзаж 5"',
        '2022-05-05',
        'ABC Souvenirs Inc., 654 Main Street, City 5, Country 5',
        9.99
    ),
    (
        'Магнит "Городской пейзаж 6"',
        '2022-06-06',
        'ABC Souvenirs Inc., 321 Main Street, City 6, Country 6',
        9.99
    ),
    (
        'Магнит "Городской пейзаж 7"',
        '2022-07-07',
        'ABC Souvenirs Inc., 789 Main Street, City 7, Country 7',
        9.99
    ),
    (
        'Магнит "Городской пейзаж 8"',
        '2022-08-08',
        'ABC Souvenirs Inc., 654 Main Street, City 8, Country 8',
        9.99
    ),
    (
        'Магнит "Городской пейзаж 9"',
        '2022-09-09',
        'ABC Souvenirs Inc., 321 Main Street, City 9, Country 9',
        9.99
    ),
    (
        'Магнит "Городской пейзаж 10"',
        '2022-10-10',
        'ABC Souvenirs Inc., 987 Main Street, City 10, Country 10',
        9.99
    );

INSERT INTO
    manufacturers (name, country)
VALUES
    ('ABC Souvenirs Inc. 1', 'Страна 1'),
    ('ABC Souvenirs Inc. 2', 'Страна 2'),
    ('ABC Souvenirs Inc. 3', 'Страна 3'),
    ('ABC Souvenirs Inc. 4', 'Страна 4'),
    ('ABC Souvenirs Inc. 5', 'Страна 5'),
    ('ABC Souvenirs Inc. 6', 'Страна 6'),
    ('ABC Souvenirs Inc. 7', 'Страна 7'),
    ('ABC Souvenirs Inc. 8', 'Страна 8'),
    ('ABC Souvenirs Inc. 9', 'Страна 9'),
    ('ABC Souvenirs Inc. 10', 'Страна 10');

UPDATE
    `souvenirs`
SET
    `manufacturer_id` = '5'
WHERE
    (`id` = '1');

UPDATE
    `souvenirs`
SET
    `manufacturer_id` = '2'
WHERE
    (`id` = '2');

UPDATE
    `souvenirs`
SET
    `manufacturer_id` = '1'
WHERE
    (`id` = '3');

UPDATE
    `souvenirs`
SET
    `manufacturer_id` = '8'
WHERE
    (`id` = '4');

UPDATE
    `souvenirs`
SET
    `manufacturer_id` = '5'
WHERE
    (`id` = '5');

UPDATE
    `souvenirs`
SET
    `manufacturer_id` = '5'
WHERE
    (`id` = '6');

UPDATE
    `souvenirs`
SET
    `manufacturer_id` = '3'
WHERE
    (`id` = '7');

UPDATE
    `souvenirs`
SET
    `manufacturer_id` = '2'
WHERE
    (`id` = '8');

UPDATE
    `souvenirs`
SET
    `manufacturer_id` = '8'
WHERE
    (`id` = '9');

UPDATE
    `souvenirs`
SET
    `manufacturer_id` = '10'
WHERE
    (`id` = '10');

SELECT
    souvenirs.title,
    souvenirs.release_date,
    souvenirs.manufacturer_details,
    souvenirs.price
FROM
    `user-book`.souvenirs
    JOIN `user-book`.manufacturers ON souvenirs.manufacturer_id = manufacturers.id
WHERE
    manufacturers.name = 'ABC Souvenirs Inc. 5';

SELECT
    souvenirs.title,
    souvenirs.release_date,
    souvenirs.manufacturer_details,
    souvenirs.price
FROM
    `user-book`.souvenirs
    JOIN `user-book`.manufacturers ON souvenirs.manufacturer_id = manufacturers.id
WHERE
    manufacturers.country = 'Страна 8';

SELECT
    manufacturers.country
FROM
    manufacturers
    JOIN souvenirs ON souvenirs.manufacturer_id = manufacturers.id
WHERE
    souvenirs.price < 10;

DELETE FROM
    souvenirs
WHERE
    manufacturer_id = (
        SELECT
            id
        FROM
            manufacturers
        WHERE
            name = 'ABC Souvenirs Inc.5'
    );

DELETE FROM
    manufacturers
WHERE
    name = 'ABC Souvenirs Inc.5';