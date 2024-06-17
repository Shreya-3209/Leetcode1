SELECT p.firstname,p.lastname,ad.city,ad.state
FROM person as p
LEFT JOIN address as ad
ON p.personId=ad.personId;

