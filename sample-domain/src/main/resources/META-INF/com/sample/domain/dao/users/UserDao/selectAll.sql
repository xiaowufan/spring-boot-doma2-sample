SELECT
    user_id
    ,first_name
    ,last_name
    ,email
    ,password
    ,tel
    ,zip
    ,address
    ,created_by
    ,created_at
    ,updated_by
    ,updated_at
    ,deleted_by
    ,deleted_at
    ,version
FROM
    users
WHERE
    deleted_at IS NULL
/*%if user.id != null */
AND user_id = /* user.id */1
/*%end*/
/*%if user.email != null */
AND email = /* user.email */'aaaa@bbbb.com'
/*%end*/
/*%if user.firstName != null */
AND first_name LIKE /* @infix(user.firstName) */'john'
/*%end*/
/*%if user.lastName != null */
AND last_name LIKE /* @infix(user.lastName) */'doe'
/*%end*/
/*%if user.tel != null */
AND tel LIKE /* @prefix(user.tel) */'0901234'
/*%end*/
/*%if user.zip != null */
AND zip LIKE /* @prefix(user.zip) */'10600'
/*%end*/
/*%if user.address != null */
AND address LIKE /* @infix(user.address) */'東京都港区'
/*%end*/
ORDER BY user_id ASC
