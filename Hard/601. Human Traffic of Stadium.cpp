
with groupTable as (
select id,
       visit_date,
       people,
       (id-row_number() over(order by id)) as groupId
    from Stadium
    where people >=100
),

refinedGroupTable as (
    select id,
       visit_date,
       people,
       count(*) over(partition by groupId) as groupSize
    from groupTable
)


select id,
       visit_date,
       people
    from refinedGroupTable
    where groupSize >=3
    order by visit_date
      
