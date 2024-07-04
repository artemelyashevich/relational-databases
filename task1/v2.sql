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