require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :name => "MyString",
      :bio => "MyText",
      :avatar => "MyString",
      :user => nil
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input#profile_name[name=?]", "profile[name]"

      assert_select "textarea#profile_bio[name=?]", "profile[bio]"

      assert_select "input#profile_avatar[name=?]", "profile[avatar]"

      assert_select "input#profile_user_id[name=?]", "profile[user_id]"
    end
  end
end
