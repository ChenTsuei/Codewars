-- Create your SELECT statement here
select *
from departments d
where exists (select *
              from sales s
              where s.department_id = d.id and s.price > 98)