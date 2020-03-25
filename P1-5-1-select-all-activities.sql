SELECT act.title, act.description, use.username
FROM activity act
LEFT OUTER JOIN "user" use
ON use.id = act.owner_id  
WHERE creation_date > '01/09/2019'
ORDER BY title, username ASC