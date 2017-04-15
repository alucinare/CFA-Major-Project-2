require 'rails_helper'

RSpec.describe "chatrooms/show", type: :view do
  before(:each) do
    @chatroom = assign(:chatroom, Chatroom.create!(
      :topic => "Topic"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Topic/)
  end
end
