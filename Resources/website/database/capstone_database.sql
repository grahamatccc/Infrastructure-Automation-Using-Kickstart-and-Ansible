CREATE DATABASE capstone_database;
USE capstone_database;

CREATE TABLE capstone_users (
	user_id INT NOT NULL AUTO_INCREMENT,
    user_created DATETIME NOT NULL,
    user_name VARCHAR(25) NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE capstone_posts (
	post_id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    post_created DATETIME NOT NULL,
    post_description VARCHAR(281) NOT NULL,
    post_title VARCHAR(100) NOT NULL,
	PRIMARY KEY (post_id),
    FOREIGN KEY (user_id )
		REFERENCES capstone_users(user_id)
);

# Create test users
INSERT INTO capstone_users (user_created, user_name)
	VALUES (NOW(), 'removal_reshuffle57927'),
    (NOW(), 'portfolio_armrest49927'),
    (NOW(), 'chitchat_saved72323'),
    (NOW(), 'unhidden_goofball34533');
    
INSERT INTO capstone_posts (user_id, post_created, post_title, post_description)
	VALUES (1, NOW(), 'Post #1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
    (2, NOW(), 'Post #2', 'Sed turpis mi, ultricies eget fringilla a, laoreet vel leo.'),
    (3, NOW(), 'Post #3', 'Integer placerat ultricies purus, vitae tristique arcu molestie nec.'),
    (4, NOW(), 'Post #4', 'Aliquam placerat leo arcu, sit amet vestibulum tellus volutpat vel.');