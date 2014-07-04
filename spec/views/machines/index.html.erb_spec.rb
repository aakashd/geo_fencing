require 'rails_helper'

RSpec.describe "machines/index", :type => :view do
  before(:each) do
    assign(:machines, [
      Machine.create!(
        :user => nil,
        :name => "Name"
      ),
      Machine.create!(
        :user => nil,
        :name => "Name"
      )
    ])
  end

  it "renders a list of machines" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
