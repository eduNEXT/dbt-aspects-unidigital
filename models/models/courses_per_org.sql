select
    org,
    count(distinct course_name) as num_courses
from
    event_sink.course_names
group by org
