require 'rails_helper'

RSpec.describe "machines/edit", :type => :view do
  before(:each) do
    @machine = assign(:machine, Machine.create!(
      :user => nil,
      :name => "MyString"
    ))
  end

  it "renders the edit machine form" do
    render

    assert_select "form[action=?][method=?]", machine_path(@machine), "post" do

      assert_select "input#machine_user_id[name=?]", "machine[user_id]"

      assert_select "input#machine_name[name=?]", "machine[name]"
    end
  end
end
