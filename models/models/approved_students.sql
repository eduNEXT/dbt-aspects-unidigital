select
    DISTINCT(actor_id),
    JSON_VALUE(event_str, '$.result.score.raw') as course_grade,
    JSON_VALUE(
        event_str,
        '$.result.extensions."http://www.tincanapi.co.uk/activitytypes/grade_classification"'
    ) as letter_grade,
    course_id
from
    xapi.xapi_events_all_parsed
where
    verb_id = 'http://id.tincanapi.com/verb/earned'
order by
    emission_time desc