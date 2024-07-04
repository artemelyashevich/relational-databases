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