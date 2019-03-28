require 'rails_helper'

RSpec.describe Purchase, type: :model do
  subject { described_class.new(price: 1,user_id:1,payment_option:"CC",video_quality: "HD",movies_season_id:1) }

  describe "Validations" do
    
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without price" do
      subject.price = nil
      expect(subject).to_not be_valid
    end
    
    it "is not valid without video quality" do
      subject.video_quality = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without payment option" do
      subject.payment_option = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a movies_season_id" do
      subject.movies_season_id = nil
      expect(subject).to_not be_valid
    end
    
    it "is not valid without a user_id" do
      subject.user_id = nil
      expect(subject).to_not be_valid
    end

  end
end
