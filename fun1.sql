delimiter //
create function fun1 (a int, b int)returns int
deterministic
begin 
declare c int;
set c=a+b;
return c;
end
//
