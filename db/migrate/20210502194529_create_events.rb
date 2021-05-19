class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.date :date
      t.time :time
      t.string :location
      t.string :latitude
      t.string :longitude
      t.string :vibe
      t.string :description

      t.timestamps
    end
  end
end
