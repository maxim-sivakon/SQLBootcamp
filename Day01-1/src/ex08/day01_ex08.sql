SELECT
    po.order_date, CONCAT("name",' (age:', age,')') AS person_information
FROM person_order AS po
NATURAL JOIN person
ORDER BY
    po.order_date, person_information;