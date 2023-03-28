/*
1667. Fix Names in a Table

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| user_id        | int     |
| name           | varchar |
+----------------+---------+
user_id is the primary key for this table.
This table contains the ID and the name of the user. The name consists of only lowercase and uppercase characters.

Write an SQL query to fix the names so that only the first character is uppercase and the rest are lowercase.
Return the result table ordered by user_id.
*/

SELECT user_id,
CONCAT(UCASE(LEFT(name, 1)), LCASE(SUBSTR(name, 2))) AS name
FROM users
ORDER BY user_id;
