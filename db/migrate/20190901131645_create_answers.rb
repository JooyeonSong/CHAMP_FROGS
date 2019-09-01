class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :user_name
      t.integer :ordering, array: true

      t.timestamps
    end
  end
end
