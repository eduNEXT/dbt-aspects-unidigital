select *
from reporting.fact_enrollments
where enrollment_mode in ('verified', 'id-professional')