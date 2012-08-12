class AddTab < ActiveRecord::Migration
  def up
    execute "CREATE TABLE tabs (
      id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
      user_uuid BINARY(16) NOT NULL,
      tab_id BINARY(16) NOT NULL,
      created_at TIMESTAMP NOT NULL,
      INDEX (user_uuid) USING HASH,
      INDEX (tab_id),
      INDEX (created_at)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8"
  end

  def down
    execute "DROP TABLE tabs"
  end
end
