class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string "name" #company name in t.string t for table. the primary ID will always be built in like in SQL. 
      t.string "city"
      t.string "state"
      t.string "url"

      t.timestamps # We always get created_at and updated_at with t.timestamps
    end
  end
end
