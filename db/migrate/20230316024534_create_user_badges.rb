class CreateUserBadges < ActiveRecord::Migration[6.1]
  def change
    create_table :user_badges do |t|
      t.references :users, null: false, foreign_key: true
      t.references :badges, null: false, foreign_key: true
      t.timestamps
    end
  end
end
