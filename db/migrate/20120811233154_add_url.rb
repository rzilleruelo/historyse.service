class AddUrl < ActiveRecord::Migration
  def up
    execute "CREATE TABLE urls (
      id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
      user_uuid BINARY(16) NOT NULL,
      tab_id BINARY(16) NOT NULL,
      client_created_at TIMESTAMP NOT NULL,
      created_at TIMESTAMP NOT NULL,
      request_type ENUM('main_frame', 'xmlhttprequest') NOT NULL,
      url TEXT NOT NULL,
      referer TEXT
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8"
  end

  def down
    execute "DROP urls"
  end
end
