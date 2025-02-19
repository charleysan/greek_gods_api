class CreateGods < ActiveRecord::Migration[8.0]
  def change
    create_table :gods do |t|
      t.string :name
      t.string :power
      t.string :symbol

      t.timestamps
    end
  end
end
