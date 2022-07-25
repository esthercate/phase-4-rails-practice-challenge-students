class CreateInstuctors < ActiveRecord::Migration[6.1]
  def change
    create_table :instuctors do |t|
      t.string :name

      t.timestamps
    end
  end
end
