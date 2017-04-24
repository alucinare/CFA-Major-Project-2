require 'rails_helper'

describe Connect do

    it "has a valid factory" do
      connect = FactoryGirl.create(:connect)
      expect(connect).to be_valid
    end

    it "is invalid without an article" do
      connect = FactoryGirl.build(:connect, article: nil)
      expect(connect).to_not be_valid
    end
end
