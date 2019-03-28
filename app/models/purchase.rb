class Purchase < ApplicationRecord
  HD_VIDEO="HD"
  SD_VIDEO="SD"
  CREDIT_PAYMENT="Credit card"
  DEBIT_PAYMENT="Debit card"
  ONLINE_PAYMENT="Online payment"
  belongs_to :movies_season
  belongs_to :user
  validates_presence_of :price,:video_quality,:payment_option
  def self.cache_key(purchases)
    {
      serializer: 'purchases',
      stat_record: movies_seasons.maximum(:updated_at)
    }
  end
end
