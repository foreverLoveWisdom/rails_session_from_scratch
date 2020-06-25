class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.string :session_identifier

      t.timestamps
    end
    add_index :sessions, :session_identifier
  end
end
