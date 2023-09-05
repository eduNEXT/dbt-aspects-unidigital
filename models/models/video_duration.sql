select
    DISTINCT(object_id),
    course_id,
    JSON_VALUE(
        event_str,
        '$.context.extensions."https://w3id.org/xapi/video/extensions/length"'
    ) AS video_duration
from
    xapi.xapi_events_all_parsed
where
    object_id like '%video%'
    and verb_id = 'http://adlnet.gov/expapi/verbs/initialized'