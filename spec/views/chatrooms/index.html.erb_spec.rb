require 'rails_helper'

RSpec.describe "chatrooms/index", type: :view do
  before(:each) do
    assign(:chatrooms, [
      Chatroom.create!(
        :topic => "Topic"
      ),
      Chatroom.create!(
        :topic => "Topic"
      )
    ])
  end

  it "renders a list of chatrooms" do
    render
    assert_select "tr>td", :text => "Topic".to_s, :count => 2
  end
end
