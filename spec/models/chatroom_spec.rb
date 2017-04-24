require 'rails_helper'

describe User do
  it "has a valid factory" do
    chatroom = FactoryGirl.create(:chatroom)
    expect(chatroom).to be_valid
  end

  it "is invalid without a topic name" do
    topic = FactoryGirl.build(:chatroom, topic: nil)
    expect(topic).to_not be_valid
  end

  it "returns a chatroom's topic as a string" do
    chatroom = FactoryGirl.build(:chatroom)
    expect(chatroom).to be_valid
  end

  it "is invalid if the topic is a duplicate" do
    topic = FactoryGirl.create(:chatroom, topic: "Chatroom Same")
    same_topic = FactoryGirl.build(:chatroom, topic: "Chatroom Same")
    expect(same_topic).to_not be_valid
  end

  it "is valid if the topic is uppercase" do
    chatroom = FactoryGirl.build(:chatroom)
    chatroom.topic = chatroom.topic.upcase
    expect(chatroom).to be_valid
  end
end
