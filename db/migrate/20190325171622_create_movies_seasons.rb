class CreateMoviesSeasons < ActiveRecord::Migration[5.2]
  def change
    create_table :movies_seasons do |t|
      t.string :title
      t.text :plot
      t.string :content_type
      t.timestamps
    end
  end
end
