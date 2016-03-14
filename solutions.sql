
--1. Get all users from Chicago
select * from syntax_practice where city = 'chicago';

--2. Get all users with usernames that contain the letter a.
select * from syntax_practice where username like '%a%';

--3. The bank is giving a new customer bonus!
--Update all records with an account balance of 0.00 and a transactions_attempted of 0.
--Give them a new account balance of 10.00.
update syntax_practice set account_balance=10.00 where transactions_attempted = 0 and account_balance = 0;

--4. Select all users that have attempted 9 or more transactions.
select * from syntax_practice where transactions_attempted >= 9;

--5.Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance.
-- NOTE: Research LIMIT
select * from syntax_practice order by account_balance desc limit 3;

--6.Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
select * from syntax_practice order by account_balance asc limit 3;

--7.Get all users with account balances that are more than $100.
select * from syntax_practice where account_balance > 100;

--8.Add a new record.
insert into syntax_practice(username, city, transactions_completed, transactions_attempted, account_balance)
values('mark', 'minneapolis', '1', '1', '15');

--9.The bank is losing money in Miami and Phoenix and needs to unload low transaction customers:
--Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.

delete from syntax_practice where city = 'miami' or city = 'phoenix' and transactions_completed < 5;