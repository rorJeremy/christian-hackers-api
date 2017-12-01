require 'rails_helper'

RSpec.describe "experts/edit", type: :view do
  before(:each) do
    @expert = assign(:expert, Expert.create!())
  end

  it "renders the edit expert form" do
    render

    assert_select "form[action=?][method=?]", expert_path(@expert), "post" do
    end
  end
end
