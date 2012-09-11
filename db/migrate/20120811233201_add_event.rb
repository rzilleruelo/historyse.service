class AddEvent < ActiveRecord::Migration
  def up
    execute "CREATE TABLE events (
      id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
      user_uuid BINARY(16) NOT NULL,
      tab_id BINARY(16) NOT NULL,
      created_at TIMESTAMP NOT NULL,
      source ENUM('click', 'scroll', 'focus', 'blur') NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8"
  end

  def down
    execute "DROP TABLE events"
  end
end
