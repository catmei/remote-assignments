-- query 1
select article.*, user.email from article 
left join user 
on user.id = article.id
order by id

-- query 2 --
select * from article 
order by id
limit 6 offset 6