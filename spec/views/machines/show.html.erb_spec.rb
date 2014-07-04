require 'rails_helper'

RSpec.describe "machines/show", :type => :view do
  before(:each) do
    @machine = assign(:machine, Machine.create!(
      :user => nil,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
  end
end
