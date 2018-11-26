class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :task
      t.string :notes
      t.integer :priority
      t.boolean :completed
      t.integer :user_id

      t.timestamps
    end
  end
end
