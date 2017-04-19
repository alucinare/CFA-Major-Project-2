require 'rails_helper'

RSpec.describe User, type: :model do

    before :each do
      @user = User.new "email"
    end

    describe "#new" do
      it "takes two parameters and returns a User object" do
        require 'pry'; binding.pry
        @user.should be_an_instance_of User
      end
    end
end
