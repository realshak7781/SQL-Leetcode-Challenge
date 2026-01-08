with cte as (
    select user_id,
    count(distinct prompt) as prompt_count, 
    round(avg(tokens),2) as avg_tokens
    from prompts
    group by user_id       
)

select distinct p.user_id,c.prompt_count,c.avg_tokens
      from prompts p inner join cte c on
      c.user_id=p.user_id and p.tokens > c.avg_tokens and c.prompt_count >=3
      order by c.avg_tokens desc,
      p.user_id asc
