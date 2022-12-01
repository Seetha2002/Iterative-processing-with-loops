--prime or not
declare
 i number:=0;
 j number:=0;
 begin
 <<outerloop>>
 for i in 1..2 loop
 <<innerloop>>
 for j in 1..4 loop
 dbms_output.put_line('The outercount is '||i||' and the inner count is: '||j);
 end loop;
 end loop;
 end;
 --prime numbers between 1 to 50:

 set serveroutput on;
 declare
left_range number:=1;
i number;
count1 number;
begin
for left_range in 1..50 loop
count1:=0;
if left_range=1 then
continue;
else
for i in 1..left_range/2 loop
if(mod(left_range,i)=0) then
count1:=count1+1;
end if;
end loop;
if count1=1 then
dbms_output.put_line(left_range);
end if;
end if;
end loop;
end;

--.prime or not:

declare
output  varchar2(30);
n  number := &num;
begin
for i in 2..n/2 loop
IF mod(n,i) = 0 THEN
output := ' is not a prime number';
goto when_prime;
end if;
end loop;
output := ' is a prime number';
<<when_prime>>
dbms_output.put_line(to_char(n) || output);
end;