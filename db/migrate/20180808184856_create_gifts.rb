class CreateGifts < ActiveRecord::Migration[5.2]
  def change
    create_table :gifts do |t|
      t.string :title
      t.string :description
      t.string :verses

      t.timestamps
    end
  end
end
