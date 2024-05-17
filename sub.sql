delimiter //
create function subtract(a int, b int) returns int
deterministic
begin
declare c int;
set c=a-b;
return c;
end

create function multiply (a int, b int) returns int
deterministic
begin
declare c int;
set c=a*b;
return c;
end
//
