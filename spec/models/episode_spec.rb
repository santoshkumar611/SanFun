require 'rails_helper'

RSpec.describe Episode, type: :model do
  subject { described_class.new(episode_number: 1,movies_season_id:1) }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without an episode number" do
      subject.episode_number = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a movies_season_id" do
      subject.movies_season_id = nil
      expect(subject).to_not be_valid
    end
  end
end
