class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.integer :student_id, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.datetime :date
      t.string :message

      t.timestamps
    end
  end
end
