require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.username { Faker::Internet.user_name }
    f.encrypted_password { Faker::Internet.password }
  end
end


# FactoryGirl.define do
#   factory :user do |f|
#     f.username { # put faker in here }
#   end
# end
