require 'pg'

def setup_test_database

  connection = PG.connect(dbname: 'bookmark_manager_test')
  #clear the bookmarks table
  connection.exec("TRUNCATE bookmarks;")

  connection.exec("INSERT INTO bookmarks (id, url, title) VALUES (1, 'http://www.makersacademy.com', 'Makers Academy'),
  (2, 'http://www.destroyallsoftware.com', 'Destroy All Software'),
  (3, 'http://www.google.com', 'Google');")

end
