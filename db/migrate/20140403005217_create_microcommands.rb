class CreateMicrocommands < ActiveRecord::Migration
  def change
    create_table :microcommands do |t|
      t.string :command_txt
      t.integer :user_id

      t.timestamps
    end
  end
end
