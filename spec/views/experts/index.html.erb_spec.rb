require 'rails_helper'

RSpec.describe "experts/index", type: :view do
  before(:each) do
    assign(:experts, [
      Expert.create!(),
      Expert.create!()
    ])
  end

  it "renders a list of experts" do
    render
  end
end
