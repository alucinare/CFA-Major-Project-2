require 'rails_helper'

describe User do
  
  it "has a valid factory" do
    user = FactoryGirl.create(:user)
    expect(user).to be_valid
  end

  it "is invalid without a username" do
    user = FactoryGirl.build(:user, username: nil)
    expect(user).to_not be_valid
  end

  it "returns a user's username as a string" do
    user = FactoryGirl.build(:user)
    expect(user).to be_valid
  end

  it "is invalid if the username is a duplicate" do
    username = FactoryGirl.create(:user, username: "John Same")
    same_username = FactoryGirl.build(:user, username: "John Same")
    expect(same_username).to_not be_valid
  end
end
