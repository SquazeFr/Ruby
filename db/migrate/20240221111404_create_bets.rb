class CreateBets < ActiveRecord::Migration[7.1]
  def change
    create_table :bets do |t|
      t.string :TeamA
      t.string :TeamB
      t.text :LogoA
      t.text :LogoB
      t.datetime :date
      t.integer :prediA
      t.integer :prediB
      t.text :Desc

      t.timestamps
    end
  end
end
