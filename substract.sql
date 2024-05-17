deimiter //
create function substract(a int, b int) returns int
deterministic
begin
declare c int;
set c=a+b;
return c;
end
//
