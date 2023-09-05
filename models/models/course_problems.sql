select
    JSON_VALUE(xblock_data_json, '$.graded', 0) as graded,
    course_key,
    org,
    location,
    display_name
from
    event_sink.course_blocks