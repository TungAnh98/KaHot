drop database kahot;
create database if not exists kahot;
use kahot;

/*Table: Accounts*/
create table if not exists account
(
	id int auto_increment primary key,
	username varchar(50) not null,
	password varchar(50),
	email varchar(50) not null,
    #date_of_birth date not null,
	#gender bit not null, #true = 1 = nam, false = 0 = nữ, gay + less không tính
	#address longtext not null,
	role int default 0, #admin role =0 , user role =1, default =1
	status bit default 1, #account enable=1,disable=0,default=1
	create_date datetime not null,
	modify_date datetime null
);

INSERT INTO `account` (`username`, `password`, `email`,`role`, `status`, `create_date`) VALUES
('tunganh69', '12345', 'anh@fpt.edu.vn', 1, 1, now()),
('dung22', '12345qwert', 'dung69@gmail.com', 1, 1, now()),
('gaylord', '12345', 'ert@gmail.com', 1, 1, now()),
('tucana', NULL, 'tunganh6(@gmail.com', 1, 1, now()),
('admin', 0, 'binh@x.x', 0, 1, now());

/*Table: Question Sets*/
create table if not exists question_set
(
	id int auto_increment primary key,
	account_id int not null,
	question_set_title varchar(1000) not null,
	status int default 0, #default question_set is only me, 1 = public  
	create_date datetime not null,
	modify_date datetime null
);

INSERT INTO `question_set` (`account_id`, `question_set_title`, `status`, `create_date`) VALUES
(1, 'How I met Your Mother', 1, now()),
(2, 'Bộ Quiz Java', 1, now()),
(1, '100 Methods to be Handsome', 1, now()),
(1, '101 Bla bla', 0, now()),
(2, 'Dota CrashCourse', 1, now()),
(2, 'Dota ', 0, now()),
(1, 'Dota Course', 1, now()),
(2, 'Dota Crse', 0, now()),
(1, 'Dota ashCourse', 0, now());

/*Table: Questions*/
create table if not exists question
(
	id int auto_increment primary key,
	question_set_id  int not null,
	question_content varchar(1000) not null,
	create_date datetime not null,
	modify_date datetime null
);

INSERT INTO `question` (`question_set_id`, `question_content`, `create_date`) VALUES
(1, 'Barcelona ?', now()),
(1, 'Den di from Navi ?',  now()),
(1, 'Real Marid ?', now()),
(1, 'Miracle from Navi ?', now()),
(2, 'Who is the god ?', now()),
(2, 'Bo bo suka blyat ?', now()),
(2, 'How to go to the Moon ?', now()),
(2, 'When did Java invented ?', now());

/*Table: Answers*/
create table if not exists answer 
(
	id int auto_increment primary key,
	question_id int not null,
	answer_content varchar(1000) not null,
	status bit default false, #default = 0 = false, 1 = true
	create_date datetime not null,
	modify_date datetime null
);

INSERT INTO `answer` (`question_id`, `answer_content`, `status`, `create_date`) VALUES
(1, 'abcxyz', false, now()),
(1, '1234', true, now()),
(1, 'agbafbagg', false, now()),
(1, 'asgfahafgadgf', false, now()),
(2, 'abcxyz', true, now()),
(2, 'adsfasf', false, now()),
(2, 'abcxyzfasdb', false, now()),
(2, 'abcxyzvzxcv', false, now()),
(3, '3243251245', false, now()),
(3, 'eafdag', false, now()),
(3, 'abcxyz213213', true, now()),
(3, 'abcxyz', false, now()),
(4, 'fadsgag', false, now()),
(4, 'afr', false, now()),
(4, '54gvft', true, now()),
(4, '2134', false, now()),
(5, 'adfg', false, now()),
(5, 'abcxyz', true, now()),
(5, '231', false, now()),
(5, '435tfe', false, now()),
(6, 'afe', false, now()),
(6, 'af', false, now()),
(6, 'afev', false, now()),
(7, 'afbvxbgafdd', false, now()),
(7, 'afdga', false, now()),
(7, 'abcxyzfasv', true, now()),
(7, 'abcxyz', false, now()),
(8, 'abcxyz', false, now()),
(8, 'abcxyz', false, now()),
(8, 'abcxyz', true, now()),
(8, 'abcxyz', false, now()),
(6, 'abcxyz', true, now());

/*Table: Game*/
create table if not exists game
(
	id int auto_increment primary key,
	question_set_id int not null,
	account_id int not null,
    pin int not null,
    status int default 0 not null, #defaul 0 = wait (open) , 1 = close
	create_date datetime not null,
	modify_date datetime null
);

INSERT INTO `game` (`question_set_id`, `account_id`, `pin`, `status`, `create_date`) VALUES
(1, 4, 937026, 0, now()),
(2, 3, 886188, 1, now()),
(1, 4, 937026, 0, now()),
(2, 2, 937026, 0, now()),
(1, 2, 937026, 0, now()),
(1, 4, 937026, 0, now());

select * from game

CREATE TABLE `player`
(
  id int primary key auto_increment,
  player_name varchar(50) NOT NULL UNIQUE,
  game_id int NOT NULL,
  score int DEFAULT 0
);

INSERT INTO `player` (`player_name`, `game_id`) VALUES
('tunganh', 1),
('blabla', 2),
('binh',1),
('binh2',1),
('viet',1);

/*Table: Answer Reports*/
create table if not exists answer_report
(
	id int auto_increment primary key,
	game_id int not null,
	question_id int not null,
	player_name varchar(50) not null,
	create_date datetime not null,
	modify_date datetime null
);

/*Table: Score Reports*/
create table if not exists score_report
(
	id int not null auto_increment primary key,
	game_id int not null,
	nickname varchar(50) not null,
	score int , 
	create_date datetime not null,
	modify_date datetime null
);

/* Alter foreign key */

ALTER TABLE question_set
ADD FOREIGN KEY (account_id) REFERENCES account(id);

ALTER TABLE question
ADD FOREIGN KEY (question_set_id) REFERENCES question_set(id);

ALTER TABLE answer
ADD FOREIGN KEY (question_id) REFERENCES question(id);

ALTER TABLE game
ADD FOREIGN KEY (question_set_id) REFERENCES question_set(id);

ALTER TABLE game
ADD FOREIGN KEY (account_id) REFERENCES account(id);

ALTER TABLE answer_report
ADD FOREIGN KEY (game_id) REFERENCES game(id);

ALTER TABLE answer_report
ADD FOREIGN KEY (question_id) REFERENCES question(id);

ALTER TABLE score_report
ADD FOREIGN KEY (game_id) REFERENCES game(id);

ALTER TABLE player
ADD FOREIGN KEY (game_id) REFERENCES game(id);

ALTER TABLE account
ADD UNIQUE KEY `username` (`username`),
ADD UNIQUE KEY `email` (`email`);

