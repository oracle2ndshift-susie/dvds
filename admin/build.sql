-- filename build.sql
-- purpose schema objects for dvd page
--   builds database, table, and 1 function
--   assumes the user and password already exist
-- history
--     swhite 19-may-14 created

-- create  database
select 'create database o2s';
create database o2s;

-- create table dvds
select 'Create o2s.dvds';
create table o2s.dvds (
	id    integer not null auto_increment,
	title varchar(100) not null,
	primary key (id)
} engine=InnoDB de3fault charset=latin1 comment 'Who Am I';

-- create function last_insert_id
select 'Create function last_insert_id()';
drop function o2s.last_insert_id;
delimiter $$
create function o2s.last_insert_id()
returns integer
begin
	declare v_id integer default 0;
	select max(id) into v_id from o2s.dvds; 
	return v_id;
end;
$$
delimiter ;

