SELECT
    manufacturers.country
FROM
    manufacturers
    JOIN souvenirs ON souvenirs.manufacturer_id = manufacturers.id
WHERE
    souvenirs.price < 10;