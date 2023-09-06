select
    AVG(attempts)
from
    (
        select
            actor_id,
            problem_id,
            max(attempts) as attempts
        from
            reporting.fact_problem_responses
        group by
            actor_id,
            problem_id
    )