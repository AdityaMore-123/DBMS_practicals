delimiter //
create procedure calfine3(rno int, nbook char(20))
begin
declare no_of_days int;
declare fineamount int;
declare date1 date;
select Date_of_issue into date1 from LIBRARY where rollno=rno and Name_of_book=nbook;
set no_of_days=datediff(curdate(),date1);
if no_of_days>15 and no_of_days<30 then set fineamount=(no_of_days-15)*5;
end if;
if no_of_days>30 then
set fineamount=((no_of_days-15)-(no_of_days-30))*5 + (no_of_days-30)*50;
end if;
select concat ('Fine is : ', fineamount);
if fineamount>0 then
insert into FINE values (rno,curdate(),fineamount);
update LIBRARY set status='R' where (rollno=rno);
end if;
end
//
