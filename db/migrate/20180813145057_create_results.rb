class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.string :uuid
      t.string :email
      t.references :primary1 
      t.references :primary2 
      t.references :primary3 
      t.references :secondary1
      t.references :secondary2
      t.references :secondary3

      t.timestamps
    end
  end
end
