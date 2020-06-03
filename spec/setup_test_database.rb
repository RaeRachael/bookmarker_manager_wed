require 'pg'

def setup_test_database
  p "Setting up test database..."

  connection = PG.connect(dbname: 'bookmark_manager_test')
  #clear the bookmarks table
  connection.exec("TRUNCATE bookmarks;")

  connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
  connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
  connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

end
