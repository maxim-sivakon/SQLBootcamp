SELECT
    po.order_date, CONCAT("name",' (age:', age,')') AS person_information
FROM
    person_order AS po
        JOIN
    person on po.person_id = person.id
ORDER BY
    order_date, person_information;
