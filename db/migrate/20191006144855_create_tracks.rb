class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|

      t.timestamps

      t.integer :bpm
      t.string :name
      t.string :key_name
    end
  end
end
