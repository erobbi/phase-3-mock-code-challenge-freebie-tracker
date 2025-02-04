class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.string :item_name
      t.integer :value
      t.integer :dev_id #this will allow for an association to dev
      t.integer :company_id #this will allow for an association to company
    end
  end
end
