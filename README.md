# blog
An web app for bloging
<<<<<<< HEAD
#   General Instruction
	Make changes through your own branch.
# 	Instruction regarding db
	Please follow this db config and schema so that we face lesser problem during integration.
		1. log into your root and create an user "demo" with password "demo";
		2. create a data base named "blog"
	Please initialise your local db with the mysql dump file(blog.sql) in "db_bak" folder.
		3. mysql -u demo -p blog < blog.sql;
	If you make any changes to db please upload the modified mysql dump and mention it in this readme file. 
# 	Database congiguration 
	db : mysql
	db name : blog
	username : demo
	password : demo
#  Schema Definitions
	1. users(username (pk), password, first_name, last_name, email);
	2. user_posts(post_id int auto_increment (pk), username(fk->users), Subject, body, publish_date auto_generate);
	3. topics(topic_id int auto_increment, topic_name(pk));
	4. tags(post_id(fk->posts),topic_id
			pk=(post_id,topic_id));
=======
# this change goes on "test" branch
#mysql 
database name : blog
username = blog 
password = blog
put database dump file in db_bakup folder

<<<<<<< HEAD
=======
>>>>>>> database description added
>>>>>>> abc8c7edf26ac10bc67b70380869cbe134294e74
