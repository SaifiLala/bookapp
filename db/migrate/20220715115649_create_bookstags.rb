class CreateBookstags < ActiveRecord::Migration[7.0]
  def change
    create_table :bookstags do |t|
      t.references :book, :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
