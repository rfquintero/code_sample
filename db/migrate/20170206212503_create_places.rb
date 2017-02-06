class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name, null: false
      t.string :letter1, limit: 1, null: false
      t.string :letter2, limit: 1, null: false
    end
  end
end
