class CreateSloganContests < ActiveRecord::Migration[5.2]
  def change
    create_table :slogan_contests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :slogan

      t.timestamps
    end
  end
end
