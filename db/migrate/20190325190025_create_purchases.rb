class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.float :price
      t.string :payment_option
      t.string :video_quality
      t.references :movies_season, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
