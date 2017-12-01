require 'rails_helper'

RSpec.describe "experts/new", type: :view do
  before(:each) do
    assign(:expert, Expert.new())
  end

  it "renders new expert form" do
    render

    assert_select "form[action=?][method=?]", experts_path, "post" do
    end
  end
end
