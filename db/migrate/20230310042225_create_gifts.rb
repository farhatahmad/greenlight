class CreateGifts < ActiveRecord::Migration[7.0]
  def change
    create_table :gifts do |t|
      t.string :name, null: false
      t.integer :ticket
      t.string :url
      t.integer :order
      t.timestamps
    end

    create_table :tickets do |t|
      t.string :number, null: false
      t.boolean :drawn, default: false
      t.timestamps
    end
  end
end
