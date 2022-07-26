-- exercicio 1

SELECT users.id, users.name, cities.name AS city 
FROM users 
JOIN cities 
ON users."cityId" = cities.id 
WHERE cities.name = 'Rio de Janeiro';

-- exercicio 2

SELECT testimonials.id, testimonials.message, u1.name AS writer, u2.name AS recipient 
FROM testimonials 
JOIN users u1 
ON testimonials."writerId" = u1.id 
JOIN users u2 
ON testimonials."recipientId" = u2.id
ORDER BY id ASC;

-- exercicio 3

SELECT u.name, e."endDate", e."userId", e."courseId", c.name AS course, s.name AS school
 FROM educations e 
 JOIN users u 
 ON e."userId" = u.id 
 JOIN courses c 
 ON e."courseId" = c.id 
 JOIN schools s 
 ON e."schoolId" = s.id 
 WHERE "userId" = 30 
 AND e.status = 'finished';

-- exercicio 4

SELECT u.id, u.name, r.name AS role, c.name AS company, e."startDate" 
FROM users u 
JOIN experiences e 
ON e."userId" = u.id 
JOIN roles r 
ON e."roleId" = r.id 
JOIN companies c 
ON e."companyId" = c.id 
WHERE e."userId" = 50 
AND e."endDate" IS NULL;

-- feito :)