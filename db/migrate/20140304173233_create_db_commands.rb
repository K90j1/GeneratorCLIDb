class CreateDbCommands < ActiveRecord::Migration
  def change
    create_table :db_commands do |t|
      t.string :db_name
      t.text :db_user
      t.text :db_pass
      t.text :encode
      t.text :option

      t.timestamps
    end
  end
end
