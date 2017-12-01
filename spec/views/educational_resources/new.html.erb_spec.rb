require 'rails_helper'

RSpec.describe "educational_resources/new", type: :view do
  before(:each) do
    assign(:educational_resource, EducationalResource.new())
  end

  it "renders new educational_resource form" do
    render

    assert_select "form[action=?][method=?]", educational_resources_path, "post" do
    end
  end
end
