require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :name => "MyString",
      :bio => "MyText",
      :avatar => "MyString",
      :user => nil
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input#profile_name[name=?]", "profile[name]"

      assert_select "textarea#profile_bio[name=?]", "profile[bio]"

      assert_select "input#profile_avatar[name=?]", "profile[avatar]"

      assert_select "input#profile_user_id[name=?]", "profile[user_id]"
    end
  end
end
