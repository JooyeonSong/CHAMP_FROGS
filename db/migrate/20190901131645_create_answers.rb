class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :ordering, array: true
      t.belongs_to :user, null: false

      t.timestamps
    end
  end
end
