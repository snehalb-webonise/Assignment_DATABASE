
 select emp.name ,emp.age from employees emp ,works w, departments dept  where emp.id = w.employee_id AND dept.id = w.department_id AND dept.name IN("Hardware" , "software");