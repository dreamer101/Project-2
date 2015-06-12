class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :website
      t.string :contact_name
      t.string :city
      t.string :state
      t.string :description

      t.timestamps null: false
    end
  end
end
