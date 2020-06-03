CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60), title CHAR(20));
INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'Makers Academy'),
 ('http://www.destroyallsoftware.com', 'Destroy All Software'),
 ('http://www.google.com', 'Google');
