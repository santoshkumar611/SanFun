require 'rails_helper'

RSpec.describe MoviesSeason, type: :model do
  subject { described_class.new(title: "test movie",plot: "something cameo", content_type: "Movie") }
  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a title" do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a plot" do
      subject.plot = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a content type" do
      subject.content_type = nil
      expect(subject).to_not be_valid
    end
  end
end
