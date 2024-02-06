SELECT DISTINCT
    po.order_date AS action_date, p.name AS person_name
FROM
    person_order AS po, person_visits AS pv, person AS p
WHERE
    po.person_id = pv.person_id AND
    po.order_date = pv.visit_date AND
    p.id = po.person_id
ORDER BY
    action_date ASC, person_name DESC;