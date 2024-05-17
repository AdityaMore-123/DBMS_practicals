delimiter //
create trigger T2 before update on Library for each row
begin
insert into Library_Audit values(NULL,'update',Now(),old.BookNo,old.BookName,old.BookPublished,old.BookCost);
end
//
