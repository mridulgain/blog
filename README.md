# blog
An web app for bloging
# this change goes on "test" branch
# 	Database congiguration 
	db : mysql
	db name : blog
	username : demo
	password : demo
#  Schema Definitions
	1. users(usr_id char(8)pk, pswd varchar(20));
	2. posts(post_id int auto_increment (pk), Subject, body, publish_date auto_generate);
	3. topics(topic_id int auto_increment, topic_name(pk));
	4. tags(post_id,topic_id
			pk=(post_id,topic_id));
	5. usr_post(post_id,usr_id);
