class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.integer :episode_number
      t.references :movies_season, foreign_key: true

      t.timestamps
    end
  end
end
