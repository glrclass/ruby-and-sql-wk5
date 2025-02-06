class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string "name" #company name in t.string t for table
      t.string "city"
      t.string "state"
      t.string "url"

      t.timestamps
    end
  end
end
