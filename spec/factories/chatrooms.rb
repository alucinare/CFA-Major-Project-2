require 'faker'

FactoryGirl.define do
  factory :chatroom do |f|
    f.topic { Faker::Internet.domain_word }
  end
end
