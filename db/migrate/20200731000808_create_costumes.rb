class CreateCostumes < ActiveRecord::Migration[6.0]
  def change
    create_table :costumes do |t|
      t.string :title
      t.string :price
      t.string :owner_name
      t.string :owner_email
      t.string :location
      t.text :description
      t.string :photo
      t.integer :category_id

      t.timestamps
    end
  end
end
